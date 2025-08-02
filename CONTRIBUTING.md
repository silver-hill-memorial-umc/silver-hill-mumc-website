# Contributing to Silver Hill Memorial UMC Website

Thank you for your interest in contributing to our church website! This guide will help you understand how to make changes and add content to our site.

## Getting Started

Our website is built using MkDocs with the Material theme. All content is written in Markdown, which is easy to learn and use - think of it as a simple way to format text.

### What You Need to Know

- **Markdown**: Basic text formatting (headings, links, lists, bold text)
- **GitHub**: How to create branches and pull requests (we'll walk you through this)
- **File Organization**: Understanding our folder structure

## Making Changes

### Step 1: Understanding the Structure

Our website content is organized in the `docs/` folder:

```
docs/
├── index.md                    # Homepage
├── about/                      # About Us section
│   ├── index.md               # Main about page
│   ├── beliefs.md             # Our beliefs
│   └── leadership.md          # Leadership team
├── worship/                    # Worship & Ministry
├── resources/                  # Resources section
├── get-involved/              # Get Involved section
├── images/                    # All images
└── stylesheets/               # Custom styling (advanced)
```

### Step 2: Making Your Changes

1. **Create a Branch**: Always create a new branch for your changes
2. **Edit Files**: Make your content changes in Markdown
3. **Preview**: Test your changes locally if possible
4. **Submit Pull Request**: Create a PR for review

### Step 3: Getting Help

If you need help with any step, please:
- Contact the church office
- Ask a tech-savvy member for assistance
- Refer to this guide and the templates below

## Content Guidelines

### Writing Style

- **Welcoming Tone**: Write as if you're personally inviting someone to church
- **Clear and Simple**: Use language everyone can understand
- **Inspiring**: Share the positive impact of our faith community
- **Inclusive**: Ensure all people feel welcomed and valued

### Content Standards

- **Accuracy**: Double-check dates, times, and contact information
- **Respect**: All content should reflect Christian values and respect for all people
- **Relevance**: Keep information current and useful
- **Quality**: Proofread for spelling and grammar

## Markdown Basics

### Headings
```markdown
# Main Heading (Page Title)
## Section Heading
### Subsection Heading
```

### Text Formatting
```markdown
**Bold text**
*Italic text*
[Link text](https://example.com)
```

### Lists
```markdown
- Bullet point 1
- Bullet point 2

1. Numbered list item 1
2. Numbered list item 2
```

### Images
```markdown
![Alt text](images/filename.jpg)
```

### Quotes
```markdown
> This is a blockquote
> - Attribution
```

## Special Features

### Buttons
```markdown
[Button Text](link-destination.md){ .md-button }
[Primary Button](link.md){ .md-button .md-button--primary }
```

### Information Boxes
```markdown
!!! note "Title"
    Your important information here.

!!! tip "Helpful Tip"
    Share useful tips with this format.

!!! warning "Important Notice"
    Use for urgent or important information.
```

### Color Highlights
```markdown
<span class="accent-text">Highlighted in red</span>
<span class="gold-accent">Highlighted in gold</span>
```

## Page Templates

### Basic Page Template
```markdown
# Page Title

Brief introduction paragraph explaining what this page covers.

## Main Section

Content for your main section here.

### Subsection

More detailed content in subsections.

## Another Section

Additional content as needed.

---

*"Relevant Bible verse or inspirational quote." - Reference*
```

### Event Page Template
```markdown
# Event Name

## Event Details

**Date:** [Date]  
**Time:** [Time]  
**Location:** [Location]  
**Contact:** [Contact Information]

## Description

Detailed description of the event, what to expect, who should attend, etc.

## Registration

Information about how to register or RSVP if needed.

[Register Here](contact-us.md){ .md-button }

---

*Bible verse or inspirational closing*
```

### Ministry Page Template
```markdown
# Ministry Name

Brief description of the ministry and its purpose.

## Who We Serve

Description of the target audience or focus of this ministry.

## What We Do

- Activity 1
- Activity 2
- Activity 3

## How to Get Involved

Steps for people to join or participate in this ministry.

## Contact Information

Who to contact for more information.

[Get Involved](../get-involved/){ .md-button }

---

*Relevant Bible verse*
```

## Image Guidelines

### Image Requirements

- **Format**: PNG or JPG preferred
- **Size**: Optimize for web (usually under 1MB)
- **Quality**: High quality but compressed for fast loading
- **Content**: Church-appropriate and permission-cleared

### Adding Images

1. **Upload**: Add images to the `docs/images/` folder
2. **Reference**: Use the markdown syntax `![Alt text](images/filename.jpg)`
3. **Alt Text**: Always include descriptive alt text for accessibility

### Special Image Classes

```markdown
![Pastor Photo](images/pastor.jpg){ .pastor-photo }
![Church Logo](images/logo.png){ .hero-logo }
```

## Common Tasks

### Adding a New Page

1. Create a new `.md` file in the appropriate folder
2. Add the page to the navigation in `mkdocs.yml`
3. Link to the page from relevant locations

### Updating Contact Information

1. Edit the relevant page content
2. Check the `mkdocs.yml` file for contact info in the `extra` section
3. Update both locations to maintain consistency

### Adding Events

1. Create a new page or update existing event pages
2. Consider adding to the homepage if it's a major event
3. Update any calendar or schedule pages

### Photo Galleries

```markdown
<div class="md-grid md-typeset" markdown>
<div class="md-grid__item" markdown>
![Photo 1](images/event1.jpg)
**Caption for photo 1**
</div>
<div class="md-grid__item" markdown>
![Photo 2](images/event2.jpg)
**Caption for photo 2**
</div>
</div>
```

## Review Process

### Before Submitting

- [ ] Proofread your content
- [ ] Check all links work correctly
- [ ] Verify image references are correct
- [ ] Ensure formatting looks good
- [ ] Confirm accuracy of any dates/times/contact info

### Pull Request Guidelines

1. **Clear Title**: Describe what you changed
2. **Description**: Explain why you made the changes
3. **Testing**: Mention if you tested the changes
4. **Questions**: Ask for help if you're unsure about anything

## Getting Help

### Technical Questions
- Check the MkDocs Material documentation
- Contact our website team
- Ask during coffee hour on Sunday

### Content Questions
- Speak with relevant ministry leaders
- Check with the pastor for doctrinal content
- Coordinate with the communications team

### Emergency Updates
For urgent updates (service cancellations, emergency notices):
- Contact the church office immediately
- Make the change and submit PR right away
- Follow up to ensure the change was deployed

## Best Practices

### Accessibility
- Use descriptive headings and link text
- Include alt text for all images
- Choose readable fonts and color contrasts
- Test with screen readers when possible

### Mobile-Friendly
- Keep paragraphs short
- Use bullet points for easy scanning
- Ensure images display well on small screens
- Test on mobile devices

### SEO Friendly
- Use descriptive page titles
- Include relevant keywords naturally
- Add meta descriptions when possible
- Use proper heading hierarchy

Thank you for helping maintain our church website! Your contributions help us share God's love with our community and beyond.

---

*"Let us consider how we may spur one another on toward love and good deeds." - Hebrews 10:24*