# Silver Hill Memorial UMC Website - Development Commands

.PHONY: help install install-dev serve build clean test lint format check deploy

# Default target
help:
	@echo "Silver Hill Memorial UMC Website Development Commands"
	@echo ""
	@echo "Setup Commands:"
	@echo "  install       Install production dependencies"
	@echo "  install-dev   Install development dependencies"
	@echo ""
	@echo "Development Commands:"
	@echo "  serve         Start development server with live reload"
	@echo "  build         Build the static site"
	@echo "  clean         Clean generated files"
	@echo ""
	@echo "Quality Commands:"
	@echo "  test          Run tests"
	@echo "  lint          Run linting checks"
	@echo "  format        Format code"
	@echo "  check         Run all quality checks"
	@echo ""
	@echo "Deployment Commands:"
	@echo "  deploy-gh     Deploy to GitHub Pages"
	@echo ""

# Installation
install:
	pip install -r requirements.txt

install-dev:
	pip install -r requirements-dev.txt
	pip install -e .

# Development
serve:
	mkdocs serve --dev-addr=127.0.0.1:8000

build:
	mkdocs build --clean

clean:
	rm -rf site/
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete

# Quality checks
test:
	@echo "Running tests..."
	@if [ -d "tests" ]; then \
		pytest tests/; \
	else \
		echo "No tests directory found. Create tests/ directory and add tests."; \
	fi

lint:
	@echo "Running linting checks..."
	flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
	flake8 . --count --exit-zero --max-complexity=10 --max-line-length=88 --statistics

format:
	@echo "Formatting code..."
	black .
	isort .

check: lint test
	@echo "All quality checks completed."

# Deployment
deploy-gh:
	mkdocs gh-deploy --clean

# Development workflow
dev-setup: install-dev
	@echo "Development environment setup complete!"
	@echo "Run 'make serve' to start the development server."

# Quick start for contributors
quick-start:
	@echo "Silver Hill Memorial UMC Website - Quick Start"
	@echo "=============================================="
	@echo ""
	@echo "1. Install dependencies:"
	@echo "   make install"
	@echo ""
	@echo "2. Start development server:"
	@echo "   make serve"
	@echo ""
	@echo "3. Open your browser to:"
	@echo "   http://127.0.0.1:8000"
	@echo ""
	@echo "4. Edit files in docs/ directory"
	@echo "5. Changes will automatically reload in browser"
	@echo ""