#!/bin/bash

# MTQ Website Deployment Configuration
# Dual branch strategy: dev (development) & html (deployment)

echo "🚀 MTQ Website - Git Configuration Setup"

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "❌ Not in a git repository. Initializing..."
    git init
fi

# Set up remote if not exists
REMOTE_URL="https://github.com/saipulbahri-it/mtq.git"
if ! git remote get-url origin &> /dev/null; then
    echo "📡 Setting up remote origin..."
    echo "Please update REMOTE_URL in this script with your actual repository URL"
    # git remote add origin $REMOTE_URL
fi

# Create and configure dev branch (development files)
echo "🔧 Setting up dev branch..."
git checkout -b dev 2>/dev/null || git checkout dev

# Add all development files to dev branch
git add .
git add dev-guide/
git add memories/
git add *.md
git add css/ js/ images/ index.html favicon.ico

echo "📝 Committing to dev branch..."
git commit -m "feat: setup development environment with documentation

- Add dev-guide/ directory structure
- Add memories/ for project history
- Add deployment configuration
- Organize development files"

# Create and configure html branch (deployment files only)
echo "🌐 Setting up html branch..."
git checkout -b html 2>/dev/null || git checkout html

# Remove all files and add only html/ contents
git rm -rf . 2>/dev/null || true

# Copy html/ contents to root for deployment
cp -r html/* . 2>/dev/null || echo "⚠️  html/ directory is empty"

# Create deployment-specific .gitignore
cp .gitignore-html-branch .gitignore

# Add deployment files
git add .
echo "🚀 Committing to html branch..."
git commit -m "feat: setup deployment files for Cloudflare Pages

- Website ready for deployment
- Clean structure for mtq-pijay.pages.dev
- Production-ready assets"

echo "✅ Git configuration complete!"
echo ""
echo "📋 Branch Structure:"
echo "   dev  - Development files (documentation, memories, source)"
echo "   html - Deployment files (ready for mtq-pijay.pages.dev)"
echo ""
echo "🚀 Next Steps:"
echo "1. Update REMOTE_URL in this script"
echo "2. Push both branches:"
echo "   git push -u origin dev"
echo "   git push -u origin html"
echo "3. Configure Cloudflare Pages to use 'html' branch"
echo ""
echo "💡 Usage:"
echo "   Development: git checkout dev"
echo "   Deployment:  git checkout html"