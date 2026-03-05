# vicious-web-content

A Claude skill + plugin system that turns brand documents into a fully written, UI-annotated website content document — exported to Google Docs.

Built by [Vicious Studio](https://viciousstudio.com).

---

## What It Does

Input a brand strategy guide, client documents, and/or a website URL. Get back a complete content document with copy for every page, every section, and high-level layout hints — ready to share with a client or hand to a developer.

---

## Pipeline

```
[Brand docs + website URL]
        ↓
  brand-intake          Extracts Brand Profile from all materials
        ↓
  [CONFIRM PROFILE]
        ↓
  site-architecture     Proposes sitemap + section topics per page
        ↓
  [APPROVE SITEMAP]
        ↓
  content-generator     Writes full copy for every section
        ↓
  ui-annotator          Adds layout hints inline per section
        ↓
  vicious-web-content   Exports to Google Doc
```

---

## Skills

| Skill | File | Purpose |
|-------|------|---------|
| `brand-intake` | `skills/brand-intake/SKILL.md` | Reads all client materials → structured Brand Profile |
| `site-architecture` | `skills/site-architecture/SKILL.md` | Brand Profile + scope → sitemap + section topics |
| `content-generator` | `skills/content-generator/SKILL.md` | Approved sitemap → full copy, all pages |
| `ui-annotator` | `skills/ui-annotator/SKILL.md` | Content draft → layout hints per section |

## Plugin

| Plugin | File | Purpose |
|--------|------|---------|
| `vicious-web-content` | `plugins/vicious-web-content/SKILL.md` | Orchestrates full pipeline + Google Doc export |

---

## Installation

Install `.skill` files via: **Claude.ai → Settings → Capabilities → Skills**

---

## Repo Structure

```
vicious-web-content/
├── skills/
│   ├── brand-intake/SKILL.md
│   ├── site-architecture/SKILL.md
│   ├── content-generator/SKILL.md
│   └── ui-annotator/SKILL.md
├── plugins/
│   └── vicious-web-content/SKILL.md
└── README.md
```

---

## Requirements

- Claude.ai with Skills enabled
- Google Docs MCP connected (for export step)
- Web search / web_fetch enabled (for website URL scraping in brand-intake)
