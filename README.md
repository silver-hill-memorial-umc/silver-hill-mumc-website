# Silver Hill Memorial UMC Website

The official website for Silver Hill Memorial United Methodist Church, built with MkDocs and the Material theme.

## 🏗️ Quick Start

### Prerequisites

- Python 3.9 or higher
- pip (Python package manager)

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-org/silver-hill-mumc-website.git
   cd silver-hill-mumc-website
   ```

2. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```
   
   Or for development:
   ```bash
   pip install -r requirements-dev.txt
   ```

3. **Start the development server:**
   ```bash
   mkdocs serve
   ```
   
   Or use the Makefile:
   ```bash
   make serve
   ```

4. **Open your browser to:** http://127.0.0.1:8000

## 🛠️ Development

### Using Make Commands

We provide a Makefile with common development tasks:

```bash
make help          # Show all available commands
make install       # Install production dependencies
make install-dev   # Install development dependencies
make serve         # Start development server
make build         # Build the static site
make clean         # Clean generated files
make check         # Run quality checks
```

### Manual Commands

- **Development server:** `mkdocs serve`
- **Build site:** `mkdocs build`
- **Deploy to GitHub Pages:** `mkdocs gh-deploy`

## 📁 Project Structure

```
├── docs/                      # Website content
│   ├── index.md              # Homepage
│   ├── about/                # About Us section
│   ├── worship/              # Worship & Ministry
│   ├── resources/            # Resources & documents
│   ├── get-involved/         # Ministry opportunities
│   ├── images/               # Image assets
│   └── stylesheets/          # Custom CSS
├── mkdocs.yml                # Site configuration
├── requirements.txt          # Python dependencies
├── requirements-dev.txt      # Development dependencies
├── pyproject.toml           # Modern Python project config
├── Makefile                 # Development commands
├── CONTRIBUTING.md          # Contributor guide
└── CLAUDE.md               # AI assistant guidance
```

## ✏️ Contributing

We welcome contributions from church members and the community! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines on:

- How to edit content
- Markdown formatting tips
- Adding images and media
- Creating new pages
- Submitting changes via GitHub

## 🎨 Design & Branding

The website uses the official Silver Hill Memorial UMC brand colors extracted from our church logo:

### Primary Brand Colors
- **Crimson Red** (#be1e2d) - Primary brand color from the "S" - used for hyperlinks
- **Content Text** (#231f20) - Text color from logo - used for body content  
- **Navy Blue** (#003462) - From the "H" with cross - used sparingly as accent

### Supporting Colors
- **Gold Accent** (#d4a574) - From mountain element - special highlights
- **Light Gray** (#f5f5f5) - Background and subtle areas
- **Medium Gray** (#9ca3af) - Borders and dividers

Visit our [Brand Guidelines](brand.md) page for complete logo usage and color specifications.

## 🚀 Deployment

The site is automatically deployed to AWS S3 via GitHub Actions when changes are merged to the main branch.

### Manual Deployment Options

- **GitHub Pages:** `make deploy-gh` or `mkdocs gh-deploy`
- **AWS S3:** Configured via GitHub Actions
- **Other hosts:** Run `mkdocs build` and upload the `site/` directory

## 📚 Technology Stack

- **[MkDocs](https://www.mkdocs.org/)** - Static site generator
- **[Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)** - Theme
- **[Python](https://python.org/)** - Runtime environment
- **[GitHub Actions](https://github.com/features/actions)** - CI/CD
- **[AWS S3](https://aws.amazon.com/s3/)** - Hosting

## 📞 Support

- **Technical Issues:** Contact the website team
- **Content Questions:** Speak with ministry leaders
- **General Help:** Call the church office

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

---

*"Let us consider how we may spur one another on toward love and good deeds." - Hebrews 10:24*
