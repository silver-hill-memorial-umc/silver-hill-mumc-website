# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a MkDocs-powered website for Silver Hill Memorial UMC, a church website built using Material for MkDocs theme. The site features a custom color scheme based on the church's logo (navy blue, crimson red, gold accents) and is designed to be easily maintainable by non-technical church members through GitHub.

## Architecture

- **Static Site Generator**: MkDocs with Material theme and extensive customization
- **Deployment**: Automated via GitHub Actions to AWS S3
- **Configuration**: `mkdocs.yml` with advanced features and custom color palette
- **Styling**: Custom CSS in `docs/stylesheets/extra.css` implementing church brand colors
- **Content Structure**: Hierarchical organization for scalability

## Key Files and Structure

```
├── mkdocs.yml                 # Main configuration with navigation, plugins, theme
├── docs/                      # Source content directory
│   ├── index.md              # Homepage with hero section and church branding
│   ├── about/                # About Us section
│   │   ├── index.md          # Main about page
│   │   ├── beliefs.md        # United Methodist beliefs
│   │   └── leadership.md     # Pastor and leadership info
│   ├── worship/              # Worship & Ministry section
│   │   ├── index.md          # Worship overview
│   │   ├── services.md       # Sunday service details
│   │   └── events.md         # Special events and celebrations
│   ├── resources/            # Resources section
│   ├── get-involved/         # Ministry involvement opportunities
│   ├── history/              # Church history (existing)
│   ├── images/               # Image assets
│   │   ├── logo.png          # New church logo
│   │   └── favicon.png       # Site favicon
│   └── stylesheets/
│       └── extra.css         # Custom CSS with church color palette
├── site/                     # Generated static site (do not edit)
├── CONTRIBUTING.md           # Contributor guide for church members
└── CLAUDE.md                 # This file
```

## Development Commands

**Build the site:**
```bash
mkdocs build
```

**Serve locally with live reload:**
```bash
mkdocs serve
```

**Deploy to GitHub Pages (if configured):**
```bash
mkdocs gh-deploy
```

## Custom Theme Implementation

The site uses a custom color palette based on the church logo:
- **Navy Blue** (#1e3a8a) - Primary color
- **Crimson Red** (#dc2626) - Accent color  
- **Gold** (#d97706) - Highlight color
- **Dark Navy** (#0f1b4c) - Secondary color

These colors are implemented through CSS custom properties in `docs/stylesheets/extra.css`.

## Content Guidelines

### Church-Specific Content Standards
- Welcoming, inclusive language
- United Methodist theological perspective
- Community-focused messaging
- Accessible language for all education levels
- Regular Bible verse quotations

### Page Templates Available
- Basic page template in CONTRIBUTING.md
- Event page template
- Ministry page template
- Hero sections with church branding

### Special Markdown Features
- Custom button styling: `[Text](link.md){ .md-button }`
- Accent text: `<span class="accent-text">text</span>`
- Gold highlights: `<span class="gold-accent">text</span>`
- Pastor photo styling: `{ .pastor-photo }`
- Hero logo styling: `{ .hero-logo }`

## Navigation Structure

The site uses a hierarchical navigation defined in `mkdocs.yml`:
- Home
- About Us (with sub-pages)
- Worship & Ministry (with sub-pages)
- Resources (with sub-pages)
- Get Involved (with sub-pages)
- Giving
- Contact Us

## Plugin Configuration

Key plugins enabled:
- `search` - Site search functionality
- `social` - Social media card generation with church branding
- `minify` - HTML/CSS optimization
- `git-revision-date-localized` - Page modification dates
- `tags` - Content tagging system
- `glightbox` - Image gallery functionality

## Contributor Workflow

The site is designed for non-technical contributors:
1. Church members create GitHub branches
2. Edit Markdown files using GitHub's web interface
3. Submit pull requests for review
4. Automatic deployment via GitHub Actions to AWS S3

See CONTRIBUTING.md for detailed contributor guidelines.

## Common Maintenance Tasks

### Adding New Content
- Create new .md files in appropriate directories
- Update navigation in `mkdocs.yml` if needed
- Follow content templates in CONTRIBUTING.md

### Updating Church Information
- Contact details in `mkdocs.yml` extra section
- Pastor information in `docs/about/leadership.md`
- Service times in worship section pages

### Image Management
- Store images in `docs/images/`
- Optimize for web (< 1MB recommended)
- Use descriptive alt text for accessibility
- Apply custom CSS classes for styling when needed

## Brand Consistency

Always maintain brand consistency:
- Use established color palette
- Include church logo prominently
- Follow typography hierarchy
- Maintain welcoming, inclusive tone
- End pages with Bible verses or inspirational quotes