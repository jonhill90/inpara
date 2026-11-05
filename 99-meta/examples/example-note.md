---
title: Example atomic note
description: A worked atomic note on private endpoint DNS, showing front matter, the Notes, Thoughts and Links headings, and links with reasons.
status: current
date: 2026-11-05
---

# Example atomic note

Saved as `01-notes/01a-atomic/private-endpoint-dns-databricks.md`, from the title "Private endpoint DNS for Databricks". The links point at files the example store would hold, so they are shown inside a code block.

````markdown
---
title: Private endpoint DNS for Databricks
description: A Databricks workspace behind a private endpoint fails to start until its private DNS zone exists and is linked to the network.
status: current
date: 2025-06-08
---

# Private endpoint DNS for Databricks

## Notes

A Databricks workspace behind a private endpoint deploys, then fails to authenticate. The cause is name resolution: the workspace and auth endpoints must resolve to private addresses.

- The private DNS zone `privatelink.azuredatabricks.net` must exist.
- An A record maps the workspace name to the private endpoint address.
- The zone must be linked to every virtual network that resolves it.

## Thoughts

DNS, not network topology, is the hard part of every private endpoint so far. A DNS forwarder that answers first can hide the private zone, which makes the failure look random. This is worth automating once, not fixing per service.

## Links

- [Private endpoints need a zone per service](private-endpoint-zone-per-service.md): the general rule this case follows
- [Private Link DNS zone list](../../04-resources/04p-pages/private-link-dns-zones.md): the captured page with every zone name
- [Private endpoint module](../../02-projects/private-endpoint-module.md): the project this note led to
````

What to notice:
- One idea: why the workspace fails and what fixes it. The zone list lives in a captured resource, and the general rule in its own note; both are linked, not copied.
- The name is a slug of the title, never a timestamp.
- The area map `03-areas/cloud-infrastructure.md` links this note (see [example-area.md](example-area.md)), so it is never an orphan.
