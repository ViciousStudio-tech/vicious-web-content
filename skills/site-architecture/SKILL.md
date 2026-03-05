---
name: site-architecture
description: >
  Second step in the Vicious web content pipeline. Use this skill after brand-intake
  has produced a confirmed Brand Profile. Takes the Brand Profile plus user-provided
  scope (site size: S/M/L or page count) and style description, and generates a proposed
  sitemap with section-level content topics per page. Always triggers when the user
  approves a Brand Profile and wants to move into structure, sitemap, or page planning.
  Do not run before brand-intake is confirmed.
---

# site-architecture

Takes the confirmed Brand Profile + scope + style description and proposes a full sitemap
with section-level topics per page. Pauses for user approval before any content is written.

---

## Step 1 — Collect Inputs

You need three things before generating. If any are missing, ask:

1. **Brand Profile** — must be confirmed from brand-intake
2. **Scope** — site size. Accept any of these formats:
   - T-shirt size: XS (1–3 pages), S (4–6), M (7–10), L (11–15), XL (16+)
   - Or explicit: "5 pages", "homepage + 3 product pages + contact"
3. **Style description** — how should this site feel and function? Examples:
   - "Editorial, minimal, brand storytelling focused"
   - "Conversion-first DTC, fast scroll, heavy social proof"
   - "Premium service, trust-building, lead gen"

If the user hasn't provided style description, ask:
> "How should this site feel — editorial and brand-forward, conversion-focused, service/trust-building,
> or something else? One sentence is enough."

---

## Step 2 — Determine Platform Context

From the Brand Profile, check Platform: Shopify / General Web / TBD.

**If Shopify:**
- Homepage is always included
- Include /collections or /products if they sell products
- About, FAQ, Contact are standard supporting pages
- Note which pages are standard Shopify templates vs. custom

**If General Web:**
- No platform constraints — suggest based purely on brand need
- Flag if any page would require custom dev work

**If TBD:** ask the user before proceeding.

---

## Step 3 — Generate the Sitemap

For each page provide:
- **Page name + URL slug**
- **Page purpose** — one sentence
- **Sections** — each with: name, content topic (1–2 sentences), content type

Format:

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
SITEMAP — [Brand Name]
Scope: [S/M/L] · Platform: [Shopify/Web] · Style: [descriptor]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PAGE 1 — Homepage (/)
Purpose: First impression + brand positioning + direct to primary CTA
─────────────────────────────────────────────────
S1 · Hero
   Topic: Brand statement + primary value prop + CTA
   Type: Full-bleed hero, headline, subhead, button

S2 · Brand POV
   Topic: What makes this brand different — the belief or mission
   Type: Narrative / editorial text block

S3 · Product/Service Highlight
   Topic: Core offer introduced visually with key benefits
   Type: Feature split or product showcase

S4 · Social Proof
   Topic: Testimonials or press mentions to build credibility
   Type: Quote carousel or logo bar

S5 · Secondary CTA
   Topic: Drive to next logical action
   Type: CTA banner

─────────────────────────────────────────────────
PAGE 2 — About (/about)
Purpose: Build trust, tell the brand story, humanize the company
─────────────────────────────────────────────────
[sections...]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## Step 4 — Add Architecture Notes

After the sitemap:

```
ARCHITECTURE NOTES
──────────────────
- Why this page order: [brief rationale]
- Pages not included but worth considering later: [list]
- Any Shopify template constraints flagged: [or "None"]
- Assumptions made: [or "None — all inputs provided"]
```

---

## Step 5 — Hard Stop for Approval

After outputting the sitemap, say:

> "Here's the proposed sitemap. You can approve as-is, remove/rename pages or sections,
> add anything I missed, or reorder. Once you confirm, I'll write full copy for every section."

**Do not proceed to content-generator until the user explicitly approves the sitemap.**
Accept partial approval and update before proceeding.
