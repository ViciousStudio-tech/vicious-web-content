---
name: vicious-web-content
description: >
  Master plugin for the Vicious web content pipeline. Orchestrates brand-intake,
  site-architecture, content-generator, and ui-annotator in sequence, manages approval
  gates, and exports the final annotated content document to Google Docs via MCP.
  Use this plugin when the user wants to run the full pipeline from brand documents
  to a finished content doc. Also use when the user says "run the content pipeline",
  "build the site content", or "start the web content workflow". This is the entry
  point — it will call each sub-skill in order.
---

# vicious-web-content (Plugin)

Orchestrates the full 4-skill pipeline from brand intake to Google Doc export.

---

## Pipeline Sequence

[Brand docs + URL + scope + style]
        |
        v
[1] brand-intake        ->  Brand Profile (confirmed by user)
        |
        v
[2] site-architecture   ->  Sitemap + section topics (approved by user)
        |
        v
[3] content-generator   ->  Full copy, all pages + sections
        |
        v
[4] ui-annotator        ->  Layout hints added inline
        |
        v
[5] Google Doc export   ->  Formatted doc via Google Docs MCP

---

## Step 1 — Intake Check

When the plugin is triggered, check what the user has provided:

- If brand docs / website URL present -> run brand-intake immediately
- If Brand Profile already exists in conversation -> confirm with user, skip brand-intake
- If sitemap already approved -> skip to content-generator

Never re-run a confirmed step without asking.

---

## Step 2 — Collect All Inputs Upfront

Before starting, confirm you have:

1. Brand materials (docs, URL, or both)
2. Scope (page count or t-shirt size)
3. Style description (1 sentence)
4. Platform (Shopify or general web)

If any are missing, ask for all missing items in one message. Do not start until you have them.

---

## Step 3 — Run the Pipeline

Execute skills in order. Each skill has its own gate:

Step 1: brand-intake — Gate: User confirms Brand Profile
Step 2: site-architecture — Gate: User approves sitemap
Step 3: content-generator — Gate: None, runs after sitemap approval
Step 4: ui-annotator — Gate: None, runs after content is complete
Step 5: Export — Gate: Confirm before writing to Google Doc

At each gate, wait for explicit user confirmation before proceeding.

---

## Step 4 — Google Doc Export

After ui-annotator completes, ask:

"Ready to export to Google Doc. Should I create a new doc, or add to an existing one?
If existing, share the URL."

Use the connected Google Docs MCP to create or update a Google Doc.

Document structure:
- Page titles: Heading 1
- Section names: Heading 2
- Copy labels (Headline, Body, CTA): Bold
- UI notes: Italic, indented
- Placeholders: Highlighted in yellow

---

## Step 5 — Deliver

After export, share the Google Doc link and confirm next steps:
- Share with client for copy review
- Hand to developer with UI notes as direction
- Use as brief for a designer

---

## Error Handling

- If Google Docs MCP is unavailable -> output full content draft as formatted text in chat
- If a skill fails mid-pipeline -> tell the user exactly which step failed and resume from there
- If the user wants to restart a specific step -> re-run only that step and everything after it
