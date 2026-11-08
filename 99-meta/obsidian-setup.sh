#!/usr/bin/env bash
# obsidian-setup.sh: install the community plugins and theme an INPARA store
# uses, at pinned versions, checked by sha256. Source: jonhill90/inpara
# 99-meta/obsidian-setup.sh (stores keep byte-identical copies).
#
# Usage: obsidian-setup.sh [--lock FILE] [--force] [VAULT]
#   VAULT  the store's root folder (default: the git top level, else the
#          current folder). Files go into VAULT/.obsidian/.
#   --lock the lock file (default: obsidian-lock.tsv beside this script).
#   --force download every file again, even when it is already in place.
#
# Lock file: tab-separated, one file per row, '#' starts a comment.
#   kind  id  url  sha256  dest
#   kind  plugin | theme | local | pending
#   url   for local: a path inside the vault (a plugin kept in the store's own git)
#   dest  path under .obsidian/ (plugins/<id>/main.js, themes/<name>/theme.css)
# A 'pending' row is printed and skipped (its code has no pinned home yet).
#
# What it never does: touch settings (*.json outside the files it installs,
# data.json, snippets), start, quit or reload Obsidian, or write a file whose
# sha256 does not match the lock. A mismatch leaves the old file in place and
# makes the script exit 1. Running it twice changes nothing the second time.
#
# Obsidian rewrites a plugin's main.js on load (it strips inline source maps
# and appends '/* nosourcemap */'), so an installed main.js is treated as
# current when the plugin's manifest.json in place matches the lock.
set -euo pipefail

lock=""; force=0; vault=""
while [ $# -gt 0 ]; do
  case "$1" in
    --lock) lock="$2"; shift 2 ;;
    --force) force=1; shift ;;
    -h|--help) sed -n '2,26p' "$0"; exit 0 ;;
    *) vault="$1"; shift ;;
  esac
done
here="$(cd "$(dirname "$0")" && pwd)"
[ -n "$lock" ] || lock="$here/obsidian-lock.tsv"
[ -n "$vault" ] || vault="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
[ -f "$lock" ] || { echo "no lock file: $lock" >&2; exit 2; }
[ -d "$vault" ] || { echo "no vault folder: $vault" >&2; exit 2; }
obs="$vault/.obsidian"

if command -v sha256sum >/dev/null 2>&1; then sha() { sha256sum "$1" | cut -c1-64; }
else sha() { shasum -a 256 "$1" | cut -c1-64; }; fi

# sha256 the lock expects for a dest path, or empty.
lock_sha() { awk -F'\t' -v d="$1" '$1 !~ /^#/ && $5 == d { print $4; exit }' "$lock"; }

tmp="$(mktemp -d)"
trap 'rm -rf -- "${tmp:?}"' EXIT
ok=0; got=0; bad=0; pend=0

while IFS=$'\t' read -r kind id url want dest; do
  case "$kind" in ''|\#*) continue ;; esac
  if [ "$kind" = pending ]; then
    printf 'pending  %-28s %s\n' "$id" "$url"; pend=$((pend + 1)); continue
  fi
  case "$dest" in plugins/*|themes/*) ;; *) echo "refused dest: $dest" >&2; bad=$((bad + 1)); continue ;; esac
  case "$dest" in *..*) echo "refused dest: $dest" >&2; bad=$((bad + 1)); continue ;; esac
  target="$obs/$dest"
  if [ "$force" = 0 ] && [ -f "$target" ]; then
    if [ "$(sha "$target")" = "$want" ]; then ok=$((ok + 1)); continue; fi
    if [ "$kind" != theme ] && [ "${dest##*/}" = main.js ]; then
      m="${dest%/main.js}/manifest.json"
      if [ -f "$obs/$m" ] && [ "$(sha "$obs/$m")" = "$(lock_sha "$m")" ]; then ok=$((ok + 1)); continue; fi
    fi
  fi
  part="$tmp/$(printf '%s' "$dest" | tr '/ ' '__')"
  if [ "$kind" = local ]; then
    case "$url" in /*|*..*) echo "refused local path: $url" >&2; bad=$((bad + 1)); continue ;; esac
    if ! cp "$vault/$url" "$part" 2>/dev/null; then
      printf 'FAIL     %-28s missing %s\n' "$id" "$url" >&2; bad=$((bad + 1)); continue
    fi
  elif ! curl -fsSL --retry 3 -o "$part" "$url"; then
    printf 'FAIL     %-28s download %s\n' "$id" "$url" >&2; bad=$((bad + 1)); continue
  fi
  have="$(sha "$part")"
  if [ "$have" != "$want" ]; then
    printf 'FAIL     %-28s %s sha256 %s, lock says %s\n' "$id" "${dest##*/}" "$have" "$want" >&2
    bad=$((bad + 1)); continue
  fi
  mkdir -p "$(dirname "$target")"
  mv -f "$part" "$target"
  printf 'got      %-28s %s\n' "$id" "$dest"; got=$((got + 1))
done < "$lock"

printf '\n%d in place, %d downloaded, %d pending, %d failed (vault %s)\n' "$ok" "$got" "$pend" "$bad" "$vault"
[ "$got" = 0 ] || echo "Reload Obsidian yourself to load new plugin files."
[ "$bad" = 0 ]
