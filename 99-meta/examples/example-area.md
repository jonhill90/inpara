---
title: Example area
description: A worked area map for cloud infrastructure, showing how an INPARA area is its own map of content.
status: current
date: 2025-06-08
id: 2026110801100016
type: meta
---

# Example area

Saved as `03-areas/cloud-infrastructure.md`. The area and its map of content are one note.

````markdown
---
title: Cloud infrastructure
description: Designing, automating and running cloud infrastructure: private networking, infrastructure as code and hybrid management.
status: current
date: 2025-06-30
type: area
id: 2025063010000001
tags: [moc, 06-2025]
---

# Cloud infrastructure

Up: [Areas](03-areas.md)

**Designing, automating and running cloud infrastructure: private networking, infrastructure as code and hybrid management.**

## Purpose

Keep cloud infrastructure work automated, secure and repeatable, and keep what is learned findable.

## Scope

In: networking and private connectivity, infrastructure as code, hybrid management, cost and monitoring.
Out: application code and data platform work, which have their own areas.

## Current focus

- Private endpoint DNS, automated once for every service
- Testing infrastructure changes before they ship

## Patterns and open questions

- DNS is the most complex part of every private endpoint so far.
- Teams that set up remote state early avoid most state problems.
- Open: how private endpoints behave across regions.

## Potential projects

- A test pipeline for infrastructure changes
- A small hybrid management pilot

<!-- map: start (written by org_check.py --maps-write) -->

## Projects

- [Private endpoint module](../02-projects/private-endpoint-module.md): finished; delivered a reusable module that creates endpoints and their DNS together

## Areas

- [Platform engineering](platform-engineering.md): shares the automation and self-service work

## Atomic notes

- [Hybrid server management options](../01-notes/01a-atomic/2025060819500001.md): what managing on-premises servers from the cloud would give us
- [Private endpoint DNS for Databricks](../01-notes/01a-atomic/2025060819300001.md): the case that showed DNS is the hard part
- [Private endpoint zone per service](../01-notes/01a-atomic/2025060819400001.md): the general rule behind every case
- [Recovering corrupted Terraform state](../01-notes/01a-atomic/2025060819450001.md): how state was rebuilt by import, and why remote state with locking prevents it

## Resources

- [Hub-and-spoke network topology](../04-resources/04c-clippings/hub-and-spoke-network-topology.md): the post that shaped our network layout
- [Private Link DNS zones](../04-resources/04c-clippings/private-link-dns-zones.md): the zone name for each service

<!-- map: end -->
````

What to notice:
- The map holds no material of its own: each line is a link and a reason.
- The notes, the captured page and the project all live in their own folders; this map is how a person finds them.
- The finished project stays linked under Projects, and its own map says `status: replaced`.
- The hand sections come first, in the template's order; the link block lists each link under the folder it points to, in path order, so two agents write the same map.
