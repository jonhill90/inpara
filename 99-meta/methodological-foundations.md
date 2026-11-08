---
title: Methodological foundations
description: The six methods INPARA draws on (GTD, PARA, LYT, Zettelkasten, MOCs, BASB) and what it takes from each.
status: current
date: 2025-06-08
id: 2026110801100014
type: meta
---

# Methodological Foundations

INPARA synthesizes proven knowledge management methodologies into a cohesive bottom-up system. Understanding these foundational approaches helps explain why INPARA works and how it can integrate with your existing workflows.

## Core Methodologies

### ✅ GTD (Getting Things Done)
**Philosophy:** Capture all tasks externally to free cognitive load.  
**Focus:** Actionable tasks with clarity on next steps.  
**Workflow:** Capture → Clarify → Organize → Reflect → Engage.  
**Best for:** Task-centric productivity and reducing overwhelm.  
**Reference:** [Getting Things Done](https://gettingthingsdone.com/) by David Allen

### 📂 PARA (Projects, Areas, Resources, Archives)
**Philosophy:** Organize digital information intuitively for quick access.  
**Structure:** Projects (active initiatives), Areas (ongoing responsibilities), Resources (reference materials), Archives (inactive/completed items).  
**Workflow:** Regularly moving items between categories based on status and relevance.  
**Best for:** Managing complex information ecosystems clearly and flexibly.  
**Reference:** [The PARA Method](https://fortelabs.com/blog/para/) by Tiago Forte

### 🔗 LYT (Linking Your Thinking)
**Philosophy:** Knowledge grows organically through interconnections.  
**Core Concept:** Semantic linking and maps of content to foster meaningful associations.  
**Workflow:** Identify connections → Build thematic clusters → Develop insights iteratively.  
**Best for:** Building richly connected, context-aware personal knowledge bases.  
**Reference:** [Linking Your Thinking](https://www.linkingyourthinking.com/) by Nick Milo

### 🗃️ Zettelkasten
**Philosophy:** Atomic notes interlinked to enable emergent creativity.  
**Core Concept:** Unique identifiers for small, discrete notes, heavily cross-referenced.  
**Workflow:** Capture atomic notes → Link to existing notes → Review for new connections.  
**Best for:** Deep research, idea development, and writing through emergence.  
**Reference:** [Zettelkasten.de](https://zettelkasten.de/) and [How to Take Smart Notes](https://takesmartnotes.com/) by Sönke Ahrens

### 🗺️ MOC (Map of Content)
**Philosophy:** Curate topic-specific overviews (Maps of Content) to enhance navigability.  
**Core Concept:** Central nodes (MOCs) act as hubs to easily traverse linked notes.  
**Workflow:** Identify themes → Create MOCs → Iteratively refine and expand maps.  
**Best for:** Maintaining structure within sprawling knowledge networks.  
**Reference:** [MOCs - Maps of Content](https://publish.obsidian.md/aidanhelfant/Spaces/%F0%9F%AA%90Content+Creation/%F0%9F%93%B8YouTube+Videos/How+I+Organize+Obsidian+with+Maps+of+Content+(MOCs))

### 🧠 BASB (Building a Second Brain)
**Philosophy:** Externalize memory and creativity digitally.  
**Structure:** Capture, Organize, Distill, Express (CODE methodology).  
**Workflow:** Regularly process captured content → summarize and refine → retrieve quickly.  
**Best for:** Enhancing creativity and productivity through accessible, externalized memory.  
**Reference:** [Building a Second Brain](https://www.buildingasecondbrain.com/) by Tiago Forte

## 🔄 INPARA's Synthesis

Rather than choosing one methodology, INPARA combines their strengths:

### What INPARA Takes From Each System

**From GTD:**
- Trusted capture system (`00-inbox/`)
- Clarify before filing: the wizard in [ORGANIZE.md](ORGANIZE.md) sorts each item once
- Regular review cycles for maintenance

**From PARA:**
- The top folders: Projects, Areas, Resources, Archive
- Projects end; areas never end
- Resources hold only what someone else made

**From Zettelkasten:**
- Atomic notes: one idea per note (`01-notes/01a-atomic/`)
- Links that say why they exist
- A stable name for every note. Like Zettelkasten, INPARA names a note by a fixed id, `YYYYMMDDhhmmss##`, and keeps the title in front matter

**From LYT and MOCs:**
- Maps of content as the hubs people browse
- In INPARA the map of content is the area itself: one map note per area in `03-areas/`, and one per project in `02-projects/`
- Structure is earned: a map appears when notes cluster, not before

**From BASB:**
- Capture, Organize, Distill, Express
- Progressive distillation from inbox to notes to maps to projects

### How the pieces fit

Maps of content and areas do the same job, so in INPARA an area **is** its map. The rest follows from one rule, one home per file:

- Folders are `NN-name`, with lettered second-level folders (`01a-atomic`) inside Inbox, Notes and Resources.
- A note is named by its id; hubs, maps and files that are not notes keep a slug of their title. Names never change after saving.
- Finished work stays where it is with `status: replaced`.
- Every note and resource is linked from at least one area or project map, and checks keep that true.

### The Unique INPARA Approach

**Bottom-Up First:** INPARA lets patterns emerge before categorization.

**Cognitive Alignment:** Designed for bottom-up thinking patterns, minimizing cognitive friction.

**One home per file:** The wizard gives every file exactly one place, so two people or two agents put the same file in the same folder with the same name.

**AI Integration:** Agents keep notes, resources and links current by rule and by check, while people browse areas and projects.

### Integration Possibilities

INPARA is designed to work alongside these methodologies, not replace them:

- **Use with an existing GTD system:** INPARA handles knowledge; GTD handles task execution
- **Enhance a PARA setup:** add INPARA's notes and maps under the same Projects, Areas, Resources and Archive
- **Complement Zettelkasten:** atomic notes and linked maps work as a slip-box
- **Integrate with PKM tools:** any tool that reads Markdown folders (Obsidian, Logseq, a code editor) can hold an INPARA store

---

*Integrate or blend these methodologies according to your cognitive style and needs.*
