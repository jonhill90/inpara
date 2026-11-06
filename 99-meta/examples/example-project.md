---
title: Example project
description: A worked project map for a private endpoint module, from planning to its outcome, with plans kept in the project folder.
status: current
date: 2025-06-08
---

# Example project

Saved as `02-projects/private-endpoint-module.md`, with its plans in `02-projects/private-endpoint-module/`. This is the map at the end of the project, after its status became `replaced`.

````markdown
---
title: Private endpoint module
description: A reusable infrastructure-as-code module that creates private endpoints with their DNS zones and network links.
status: replaced
date: 2025-06-15
---

# Private endpoint module

Up: [Projects](README.md)

**A reusable infrastructure-as-code module that creates private endpoints with their DNS zones and network links.**

## Objective

One module that deploys a private endpoint and its DNS for storage, key vault, Databricks and SQL, with no manual DNS steps.

## Context

Manual DNS setup caused most private endpoint failures. Serves [Cloud infrastructure](../03-areas/cloud-infrastructure.md).

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

<!-- map: start (written by org_check.py --maps-write) -->

## Areas

- [Cloud infrastructure](../03-areas/cloud-infrastructure.md): the area this project serves

## Plans

- [Module design](private-endpoint-module/module-design.md): inputs, outputs and one service at a time
- [Progress log](private-endpoint-module/progress-log.md): dated entries from start to finish

## Atomic notes

- [Private endpoint DNS for Databricks](../01-notes/01a-atomic/private-endpoint-dns-for-databricks.md): the failure the module must prevent
- [Private endpoint zone per service](../01-notes/01a-atomic/private-endpoint-zone-per-service.md): the rule the module encodes
- [Test infrastructure modules before release](../01-notes/01a-atomic/test-infrastructure-modules-before-release.md): the lesson written from the outcome

## Resources

- [Private Link DNS zones](../04-resources/04p-pages/private-link-dns-zones.md): the zone names the module maps

<!-- map: end -->
````

What to notice:
- The hand sections come first, in the template's order; the link block lists each link under the folder it points to, in path order, so two agents write the same map.
- The project's own plans live in its folder; knowledge still useful after the project, like the testing lesson, became a note in `01-notes/`.
- The project ended without moving. Its status is `replaced`, the outcome is written in the map, and every link to it still works.
