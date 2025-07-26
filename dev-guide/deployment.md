# Deployment Guide

## Dual Branch Strategy

Proyek ini menggunakan strategi dual branch untuk memisahkan development dan deployment:

### Branch Structure

#### `dev` Branch (Development)
- **Purpose**: Development dan dokumentasi
- **Contents**: Semua file termasuk dev-guide/, memories/, .ai-instructions.md, dokumentasi
- **Usage**: Untuk development, dokumentasi, dan kolaborasi
- **Important files**: dev-guide/, memories/, .ai-instructions.md TIDAK di-ignore

#### `html` Branch (Deployment) 
- **Purpose**: Deployment ke Cloudflare Pages
- **Contents**: Hanya file website siap pakai
- **Usage**: Untuk deployment ke mtq-pijay.pages.dev

## File Structure

### Development (dev branch)
```
/
├── css/                    # Source styles  
├── js/                     # Source scripts
├── images/                 # Source assets
├── favicon.ico             # Source favicon
├── dev-guide/              # Documentation (NOT ignored)
├── memories/               # Project history (NOT ignored)
├── .ai-instructions.md     # AI behavior settings (NOT ignored)
├── package.json            # Node.js dependencies
├── html/                   # Deployment folder
│   ├── index.html          # Ready for deployment
│   ├── css/                # Production styles
│   ├── js/                 # Production scripts
│   ├── images/             # Production assets
│   └── favicon.ico         # Production favicon
├── deploy-config.sh        # Setup script
├── update-deployment.sh    # Asset sync script
└── README.md               # Project docs
```

### Production (html branch)
```
/
├── index.html              # Website root
├── css/                    # Styles
├── js/                     # Scripts  
├── images/                 # Assets
├── favicon.ico             # Favicon
└── .gitignore              # Deployment gitignore
```

## Setup Commands

### Initial Setup
```bash
# Run the setup script
./deploy-config.sh
```

### Manual Setup
```bash
# 1. Setup dev branch
git checkout -b dev
git add .
git commit -m "feat: setup development environment"

# 2. Setup html branch  
git checkout -b html
git rm -rf .
cp -r html/* .
git add .
git commit -m "feat: setup deployment files"

# 3. Push both branches
git push -u origin dev
git push -u origin html
```

## Development Workflow

### Working on Development
```bash
# Switch to dev branch
git checkout dev

# Make changes to source files
# Edit index.html, css/, js/, etc.

# Update deployment folder
cp index.html html/
cp -r css html/
cp -r js html/
cp -r images html/
cp favicon.ico html/

# Commit dev changes
git add .
git commit -m "feat: your changes"
git push origin dev

# Update deployment
git checkout html
cp -r ../html/* .  # Copy from dev branch
git add .
git commit -m "deploy: update from dev"
git push origin html
```

### Quick Development Commands
```bash
# Update html/ folder from source (run in dev branch)
./update-deployment.sh

# Switch between branches
git checkout dev      # Development
git checkout html     # Deployment
```

## Cloudflare Pages Configuration

### Setup Steps
1. Login ke Cloudflare Pages
2. Connect GitHub repository
3. **Branch**: Select `html` branch
4. **Build command**: (leave empty - static files)
5. **Build output directory**: (leave empty - root)
6. **Domain**: mtq-pijay.pages.dev

### Environment Settings
- **Framework preset**: None (Static)
- **Node.js version**: (not needed)
- **Build command**: (not needed)
- **Build output**: / (root)

## Deployment Process

### Automatic Deployment
Setiap push ke `html` branch akan trigger automatic deployment di Cloudflare Pages.

### Manual Deployment
```bash
# From dev branch, update and deploy
git checkout dev

# Make your changes...

# Update deployment files
cp index.html html/
cp -r css html/
cp -r js html/
cp -r images html/

# Commit dev changes
git add .
git commit -m "feat: your changes"
git push origin dev

# Deploy to production
git checkout html
cp -r ../html/* .
git add .
git commit -m "deploy: update website"
git push origin html
```

## Maintenance Scripts

### `update-deployment.sh` (to create)
```bash
#!/bin/bash
# Update html/ folder with latest changes

echo "🔄 Updating deployment files..."
cp index.html html/
cp -r css html/
cp -r js html/
cp -r images html/
cp favicon.ico html/
echo "✅ Deployment files updated"
```

### `deploy.sh` (to create)
```bash
#!/bin/bash
# Full deployment process

echo "🚀 Deploying MTQ Website..."

# Update deployment files
./update-deployment.sh

# Commit dev changes
git add .
git commit -m "feat: update for deployment"
git push origin dev

# Switch to html and deploy
git checkout html
cp -r ../html/* .
git add .
git commit -m "deploy: $(date +'%Y-%m-%d %H:%M')"
git push origin html

echo "✅ Deployment complete!"
echo "🌐 Check: https://mtq-pijay.pages.dev"

# Back to dev
git checkout dev
```

## Branch Protection

### Dev Branch
- Main development branch
- All features dan dokumentasi
- Protected from direct deployment

### HTML Branch  
- Production-only branch
- Auto-deploy ke Cloudflare Pages
- Clean, optimized files only

## Troubleshooting

### Common Issues

**Branch out of sync**:
```bash
git checkout dev
git pull origin dev
./update-deployment.sh
git checkout html
git pull origin html
```

**Merge conflicts**:
```bash
# Don't merge between branches
# Always copy files from dev/html/ to html branch root
```

**Deployment not updating**:
- Check Cloudflare Pages dashboard
- Verify html branch has latest changes
- Check build logs for errors

### Best Practices

1. **Always work in dev branch**
2. **Test locally before deployment**
3. **Keep html/ folder updated in dev branch**
4. **Use descriptive commit messages**
5. **Don't edit files directly in html branch**