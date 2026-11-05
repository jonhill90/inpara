---
title: Example project map
description: A worked project map for a private endpoint module, from planning to its outcome, with plans kept in the project folder.
status: current
date: 2026-11-05
---

# Example project map

Saved as `02-projects/private-endpoint-module.md`, with its plans in `02-projects/private-endpoint-module/`. This is the map at the end of the project, after its status became `replaced`.

````markdown
---
title: Private endpoint module
description: A reusable infrastructure-as-code module that creates private endpoints with their DNS zones and network links.
status: replaced
date: 2025-06-15
---

# Private endpoint module

## Objective

One module that deploys a private endpoint and its DNS for storage, key vault, Databricks and SQL, with no manual DNS steps.

## Context

Manual DNS setup caused most private endpoint failures. Serves [Cloud infrastructure](../03-areas/cloud-infrastructure.md).

## Uses

- [Private endpoint DNS for Databricks](../01-notes/01a-atomic/private-endpoint-dns-databricks.md): the failure the module must prevent
- [Private endpoints need a zone per service](../01-notes/01a-atomic/private-endpoint-zone-per-service.md): the rule the module encodes
- [Private Link DNS zone list](../04-resources/04p-pages/private-link-dns-zones.md): the zone names the module maps

## Plans and logs

- [Module design](private-endpoint-module/module-design.md): inputs, outputs and one service at a time
- [Progress log](private-endpoint-module/progress-log.md): dated entries from start to finish

## Scope

- **In:** endpoints for four services, zone creation, network links, usage examples
- **Out:** custom DNS forwarders and multiple regions

## Tasks

- [x] Survey existing endpoint setups
- [x] Build for storage first, then add services
- [x] Test resolution from more than one network
- [x] Write usage examples

## Success criteria

- DNS works with no manual step for all four services
- Setup time drops from hours to minutes

## Outcome

Delivered 2025-07-20. Starting with one service and adding the rest was the right order. Lessons became notes:
- [Test infrastructure modules before release](../01-notes/01a-atomic/test-infrastructure-modules-before-release.md): why testing tools paid off on a module this size
````

What to notice:
- The project's own plans live in its folder; knowledge still useful after the project, like the testing lesson, became a note in `01-notes/`.
- The project ended without moving. Its status is `replaced`, the outcome is written in the map, and every link to it still works.
