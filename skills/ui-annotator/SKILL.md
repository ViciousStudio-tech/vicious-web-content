---
name: ui-annotator
description: >
  Fourth step in the Vicious web content pipeline. Use this skill after content-generator
  has written full copy for all pages. Reads the content draft and appends high-level
  UI layout hints to each section — e.g. "Hero: full-bleed image, headline over, CTA below."
  Triggers automatically after content-generator completes, or when the user asks for
  layout suggestions, UI notes, or section structure recommendations. Adapts hints based
  on Shopify vs. general web context.
---

# ui-annotator

Reads the completed content draft from content-generator and appends high-level layout
hints to each section. No code. No components. Direction only.

---

## Step 1 — Load Context

Pull from earlier in the conversation:

1. **Platform** — Shopify or general web
2. **Style description** — from site-architecture
3. **Visual direction keywords** — from Brand Profile
4. **Completed content draft** — all pages from content-generator

---

## Step 2 — Annotate Each Section

For every section in the content draft, add a UI NOTE: block directly below the content.

UI notes must cover:

- **Layout pattern** — e.g. full-bleed, split 50/50, centered column, grid, stacked
- **Visual element** — what goes in the visual space (hero image, product photo, illustration, video, none)
- **Content position** — where text sits relative to visual (overlay, side-by-side, below, above)
- **Interaction hint** (optional) — scroll behavior, hover state if genuinely useful
- **Shopify note** (if applicable) — standard section type this maps to, or flag as custom

Keep notes SHORT. One to three lines max per section. This is direction, not a spec.

---

## Step 3 — Section Pattern Reference

| Pattern Name | Description |
|---|---|
| Full-bleed hero | Edge-to-edge image/video, text overlaid centered or bottom-left |
| Split 50/50 | Image left or right, content filling the other half |
| Centered column | Text or content centered with max-width, no image |
| Feature grid | 2–4 column grid of icon/image + text blocks |
| Stacked full-width | Content stacked vertically, full width, alternating background |
| Quote / testimonial | Large pull quote centered, or cards in a row |
| CTA banner | Full-width band — headline + button, high contrast |
| Horizontal scroll | Cards or items that scroll horizontally on mobile |
| Accordion / FAQ | Collapsible Q&A list |
| Minimal footer | Simple link columns + legal copy |

---

## Step 4 — Adapt for Style

Cross-reference the style description from site-architecture:

- **Editorial / brand-forward** → favor centered columns, full-bleed imagery, generous whitespace
- **Conversion-first / DTC** → favor above-fold CTAs, social proof proximity to product, sticky nav
- **Premium / service / trust** → favor split layouts, founder/team imagery, testimonials near CTAs
- **Mixed** → apply per-page based on page purpose

---

## Step 5 — Output Format

Insert UI notes inline into the content draft:

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PAGE: Homepage (/)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

── SECTION 1: Hero ──────────────────────────────
Headline: [copy]
Subheadline: [copy]
CTA: [copy] → [destination]

  UI NOTE: Full-bleed hero image — lifestyle or editorial product shot.
  Headline overlaid bottom-left or centered. CTA button below subhead.
  Dark overlay on image for text legibility. [Shopify: Image Banner section]

── SECTION 2: Brand POV ─────────────────────────
Headline: [copy]
Body: [copy]

  UI NOTE: Centered column, max ~700px width. No image — let the copy breathe.
  Optional: subtle background color shift to break from hero. [Shopify: Rich Text section]
```

---

## Step 6 — Hand Off

After all sections are annotated, say:

> "All sections annotated. Ready to export to Google Doc."

Proceed to vicious-web-content plugin for export.
