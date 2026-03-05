---
name: content-generator
description: >
  Third step in the Vicious web content pipeline. Use this skill after the sitemap
  has been approved via site-architecture. Takes the confirmed Brand Profile and approved
  sitemap and writes full website copy section by section, page by page. Triggers when
  the user approves a sitemap and says to proceed with writing, content, or copy.
  Do not run before both brand-intake and site-architecture are confirmed.
---

# content-generator

Takes the approved sitemap + Brand Profile and writes complete copy for every section
of every page.

---

## Before Writing — Load Context

Pull these from earlier in the conversation:

1. **Brand Profile** (from brand-intake) — voice, tone, audience, offer, CTA
2. **Approved Sitemap** (from site-architecture) — all pages and sections confirmed by user
3. **Platform** — Shopify or general web

If either is missing, do not proceed. Ask the user to confirm which step was skipped.

---

## Step 1 — Set the Voice

Before writing any copy, re-read the Brand Profile voice section:

- Adjectives: internalize these — every headline and body line should embody them
- Avoid: flag anything written that risks violating this
- Sample lines: use as the tonal north star, not as copy to reuse

The copy must sound like the brand, not like generic web copy.

---

## Step 2 — Write Page by Page

Work through each page in the approved sitemap in order. For each section provide:

**Headline** — primary H1 or H2. Short, brand-voiced, purposeful.
**Subheadline** (if applicable) — supports headline, adds detail or emotion
**Body copy** — full paragraph(s) as needed. Match tone. No filler.
**CTA text** (if applicable) — button label + destination note
**Supporting copy** (if applicable) — captions, labels, list items, pull quotes

### Section type conventions:

| Section Type | What to write |
|---|---|
| Hero | Headline + subhead + CTA. Punchy. Brand statement. |
| Narrative / POV | 2–4 paragraphs. Brand belief, origin, or mission. |
| Feature / Benefit list | 3–6 items. Headline per item + 1–2 sentence description. |
| Social proof | Testimonial copy or placeholder format with instructions |
| FAQ | 5–10 Q&A pairs relevant to this audience |
| CTA banner | Headline + 1 sentence + button label |
| Product/Service showcase | Name, 1-line descriptor, 3 key benefits per item |
| Contact / Footer | Minimal — labels and instructional copy only |

---

## Step 3 — Placeholder Protocol

When real content is not available, use clearly marked placeholders:

```
[PLACEHOLDER: Insert 2–3 customer testimonials here — ideally mentioning specific results]
[PLACEHOLDER: Product image — hero shot on white or lifestyle]
[PLACEHOLDER: Founder photo or team image]
```

Never invent fake testimonials or fake statistics.

---

## Step 4 — Output Format

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PAGE: Homepage (/)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

── SECTION 1: Hero ──────────────────────────────
Headline: [headline copy]
Subheadline: [subhead copy]
CTA: [Button label] → [destination]

── SECTION 2: Brand POV ─────────────────────────
Headline: [headline]
Body:
[Full paragraph(s)]

── SECTION 3: Product Highlight ─────────────────
Headline: [headline]
Item 1 — [Name]: [descriptor]. [Benefit 1]. [Benefit 2].
CTA: [Button label] → [destination]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PAGE: About (/about)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[continue...]
```

---

## Step 5 — Shopify vs. General Web

**If Shopify:**
- Product description copy should follow Shopify metafield conventions
- FAQ sections — note if these should be metafields or hardcoded
- Navigation copy — keep labels short (Shopify nav character limits)
- Collection page copy — header + brief descriptor only

**If General Web:**
- No platform constraints — write to ideal length
- Note any sections that imply dynamic content

---

## Step 6 — Hand Off

After all pages are written, say:

> "All copy is written. I'll now add layout hints to each section."

Proceed directly to ui-annotator — no approval gate needed here.
