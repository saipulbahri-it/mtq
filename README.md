# MTQ Aceh XXXVII Website

Website resmi untuk MTQ (Musabaqah Tilawatil Qur'an) Aceh XXXVII 2025 yang akan diselenggarakan di Kabupaten Pidie Jaya pada tanggal 18-25 Oktober 2025.

## 🎯 Overview

Website statis modern dengan fitur countdown, informasi event, jadwal perlombaan, dan live streaming untuk kompetisi tilawah Al-Qur'an tingkat provinsi Aceh.

**Live Website**: [mtq-pijay.pages.dev](https://mtq-pijay.pages.dev)

## 🏗️ Architecture

- **Frontend**: HTML5, CSS3, Vanilla JavaScript
- **Styling**: Tailwind CSS (CDN) + Custom CSS
- **Fonts**: Google Fonts (Playfair Display + Inter)
- **Deployment**: Cloudflare Pages
- **Development**: Live Server dengan auto-reload

## 📁 Project Structure

```
/
├── src/                    # 📂 Source files
│   ├── index.html          # Main website
│   ├── css/index.css       # Styles
│   ├── js/index.js         # JavaScript
│   ├── images/             # Assets
│   └── favicon.ico         # Site icon
├── html/                   # 🚀 Deployment (auto-generated)
├── dev-guide/              # 📖 Documentation
├── memories/               # 📝 Project history
├── .ai-instructions.md     # 🤖 AI behavior settings
├── package.json            # 📦 Dependencies
└── update-deployment.sh    # 🔧 Build script
```

## 🚀 Quick Start

### Prerequisites
- Node.js (untuk live-server)
- Git
- Text editor (VS Code recommended)

### Setup Development
```bash
# Clone repository
git clone https://github.com/saipulbahri-it/mtq.git
cd mtq

# Install dependencies
npm install

# Start development server
npm run dev
```

Website akan terbuka di `http://localhost:8080`

## 💻 Development

### Daily Workflow
1. **Edit files** di `src/` directory:
   - `src/index.html` - Main HTML
   - `src/css/index.css` - Styles
   - `src/js/index.js` - JavaScript
   - `src/images/` - Images

2. **Build untuk deployment**:
   ```bash
   npm run update-deployment
   ```

3. **Preview changes**: Auto-reload di browser

### Development Commands
```bash
npm run dev              # Start live-server
npm run preview          # Start server tanpa auto-open
npm run update-deployment # Build src/ → html/
npm run deploy-setup     # Setup git branches
```

### File Organization
- **Source files**: Edit di `src/` directory
- **Deployment files**: Auto-generated di `html/`
- **Documentation**: Available di `dev-guide/`
- **History**: Project logs di `memories/`

## 🌐 Deployment

### Dual Branch Strategy
- **`dev` branch**: Development files + documentation
- **`html` branch**: Deployment files only

### Cloudflare Pages Setup
1. Connect repository
2. **Build branch**: `html`
3. **Build command**: (empty - static files)
4. **Build output**: `/` (root)

### Deployment Process
```bash
# Development workflow
git checkout dev
# Edit files in src/
npm run update-deployment

# Commit development changes
git add .
git commit -m "feat: your changes"
git push origin dev

# Deploy to production (clean html branch)
git checkout html
rm -rf ./* (keeping .git and .gitignore)
cp -r ../html/* . (copy built files from dev branch)
git add .
git commit -m "deploy: update website"
git push origin html
```

### Auto-Deployment
- Push ke `html` branch → Auto-deploy ke Cloudflare Pages
- Live di [mtq-pijay.pages.dev](https://mtq-pijay.pages.dev)

## 🔧 Configuration

### Git Branches
```bash
# Setup dual branch strategy
./deploy-config.sh
```

### AI Instructions
Project menggunakan AI instructions di `.ai-instructions.md` untuk:
- Auto-history documentation
- Git command protection
- Prompt clarification
- Credit attribution ke "saifcode"

## 📋 Features

### Current Features
- ✅ Responsive design dengan Tailwind CSS
- ✅ Countdown timer ke event (18 Oktober 2025)
- ✅ Informasi lengkap event dan kategori lomba
- ✅ Live streaming integration (YouTube)
- ✅ Interactive navigation dengan smooth scrolling
- ✅ Loading screen dengan animasi
- ✅ Social media integration
- ✅ Glass-morphism design effects

### Technical Features
- ✅ Modern CSS (Grid, Flexbox, backdrop-filter)
- ✅ Vanilla JavaScript dengan DOM manipulation
- ✅ Mobile-first responsive design
- ✅ Auto-reload development environment
- ✅ Dual branch deployment strategy

## 🛠️ Development Tools

### Local Development
- **Live Server**: Auto-reload development server
- **Update Script**: Automated build process
- **Git Hooks**: Branch-specific configurations

### Documentation
- **dev-guide/**: Comprehensive development guides
- **memories/**: Project history dan chat logs
- **AI Instructions**: Automated development assistance

### Code Quality
- **Consistent Attribution**: All code credited to "saifcode"
- **Clean Structure**: Organized source vs deployment
- **Version Control**: Complete change tracking

## 📖 Documentation

Dokumentasi lengkap tersedia di:
- [`dev-guide/README.md`](dev-guide/README.md) - Main documentation
- [`dev-guide/setup.md`](dev-guide/setup.md) - Setup dan development
- [`dev-guide/deployment.md`](dev-guide/deployment.md) - Deployment guide
- [`dev-guide/architecture.md`](dev-guide/architecture.md) - Technical details

## 🔍 Troubleshooting

### Common Issues
**Live server not starting**:
```bash
npm install
npm run dev
```

**Assets not loading**:
```bash
npm run update-deployment
```

**Deployment issues**:
```bash
git checkout html
cp -r html/* .
git add . && git commit -m "deploy: fix"
```

### Development Support
- Check `dev-guide/setup.md` untuk detailed troubleshooting
- Review `memories/` untuk project history
- Consult `.ai-instructions.md` untuk AI assistance

## 🎨 Design

### Color Scheme
- **Primary**: Blue variants (#3b82f6, #1d4ed8)
- **Secondary**: Amber/Yellow (#fbbf24, #f59e42)
- **Neutral**: Slate scale (#1e293b to #f8fafc)

### Typography
- **Headings**: Playfair Display (serif)
- **Body**: Inter (sans-serif)

### Components
- Glass-morphism cards
- Gradient backgrounds
- Hover animations
- Smooth transitions

## 📊 Event Information

**MTQ Aceh XXXVII 2025**
- **Date**: 18-25 Oktober 2025
- **Location**: Kabupaten Pidie Jaya
- **Participants**: 23 Kabupaten/Kota (1,230+ peserta)
- **Categories**: Tilawah, Hifzh, Tafsir, Khatil, Fahmil, Syarhil Qur'an

## 🤝 Contributing

### Development Workflow
1. Fork repository
2. Create feature branch dari `dev`
3. Make changes di `src/` directory
4. Test dengan `npm run dev`
5. Build dengan `npm run update-deployment`
6. Submit pull request ke `dev` branch

### Code Standards
- Follow existing code style
- Test di multiple browsers
- Update documentation jika needed
- Credit code ke "saifcode"

## 📄 License

MIT License - See LICENSE file for details

## 👨‍💻 Developer

**Developed by saifcode**

---

*Website untuk MTQ Aceh XXXVII 2025 - Pidie Jaya*  
*Musabaqah Tilawatil Qur'an Tingkat Provinsi Aceh*