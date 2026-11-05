---
title: Example area map
description: A worked area map for cloud infrastructure, showing how an INPARA area is its own map of content.
status: current
date: 2026-11-05
---

# Example area map

Saved as `03-areas/cloud-infrastructure.md`. The area and its map of content are one note.

````markdown
---
title: Cloud infrastructure
description: Designing, automating and running cloud infrastructure: private networking, infrastructure as code and hybrid management.
status: current
date: 2025-06-30
---

# Cloud infrastructure

## Purpose

Keep cloud infrastructure work automated, secure and repeatable, and keep what is learned findable.

## Scope

In: networking and private connectivity, infrastructure as code, hybrid management, cost and monitoring.
Out: application code and data platform work, which have their own areas.

## Current focus

- Private endpoint DNS, automated once for every service
- Testing infrastructure changes before they ship

## Private connectivity

- [Private endpoint DNS for Databricks](../01-notes/01a-atomic/private-endpoint-dns-databricks.md): the case that showed DNS is the hard part
- [Private endpoints need a zone per service](../01-notes/01a-atomic/private-endpoint-zone-per-service.md): the general rule behind every case
- [Private Link DNS zone list](../04-resources/04p-pages/private-link-dns-zones.md): the zone name for each service

## Infrastructure as code

- [Recovering corrupted Terraform state](../01-notes/01a-atomic/recovering-corrupted-terraform-state.md): how state was rebuilt by import, and why remote state with locking prevents it

## Hybrid management

- [Hybrid server management options](../01-notes/01a-atomic/hybrid-server-management-options.md): what managing on-premises servers from the cloud would give us

## Projects

- [Private endpoint module](../02-projects/private-endpoint-module.md): finished; a reusable module that creates endpoints and their DNS together

## Patterns and open questions

- DNS is the most complex part of every private endpoint so far.
- Teams that set up remote state early avoid most state problems.
- Open: how private endpoints behave across regions.

## Potential projects

- A test pipeline for infrastructure changes
- A small hybrid management pilot

## Related areas

- [Platform engineering](platform-engineering.md): shares the automation and self-service work
````

What to notice:
- The map holds no material of its own: each line is a link and a reason.
- The notes, the captured page and the project all live in their own folders; this map is how a person finds them.
- The finished project stays linked, and its own map says `status: replaced`.
