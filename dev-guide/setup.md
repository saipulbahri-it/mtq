# Development Setup

## Prerequisites

No special setup required - this is a static HTML website.

**Minimum Requirements:**
- Modern web browser (Chrome, Firefox, Safari, Edge)
- Text editor (VS Code, Sublime, etc.)
- Node.js (for live-server)
- Optional: Python for alternative server

## Local Development

### Recommended: Live Server (html/ directory)

#### Setup
```bash
# Install dependencies
npm install

# Or install live-server globally
npm install -g live-server
```

#### Development Commands
```bash
# Start development server (recommended)
npm run dev

# Preview without auto-opening browser
npm run preview

# Alternative: run directly
live-server html/ --port=8080
```

**Benefits**: Auto-reload, hot-reloading, mobile testing, port 8080

### Alternative Options

#### Option 1: Direct File Opening
```bash
# Open HTML file directly in browser
open html/index.html
# or
double-click html/index.html
```

#### Option 2: Python Server
```bash
# From html/ directory
cd html/
python -m http.server 8000

# Or from project root
python -m http.server 8000 --directory html/
```

#### Option 3: Node.js/PHP Servers
```bash
# Node.js (from html/ directory)
cd html/
npx serve .

# PHP (from html/ directory)
cd html/
php -S localhost:8000
```

**Local Preview URL**: 
- `http://localhost:8080` (live-server/npm scripts)
- `http://localhost:8000` (Python/PHP servers)

## File Organization

### Main Files
- `src/index.html` - Main website file (source)
- `src/` - Source assets: css/, js/, images/, favicon.ico
- `html/` - Deployment directory (generated from src/)

### Assets Structure
```
src/
├── index.html          # Main website file
├── css/
│   └── index.css       # Main stylesheet
├── js/
│   └── index.js        # Core functionality
├── images/
│   ├── logo.png        # MTQ logo
│   └── bupati-dan-wakil-2025.png  # Officials photo
└── favicon.ico         # Site favicon

html/                   # Deployment directory (auto-generated)
├── index.html          # Copied from src/
├── css/
├── js/
├── images/
└── favicon.ico
```

## Content Management

### Text Content
All content is in Indonesian. Key areas to update:
- Event dates and countdown target
- Venue information and maps
- News articles and announcements
- Competition categories and descriptions

### Images
- Replace files in `images/` directory
- Update `src` attributes in HTML
- Maintain aspect ratios for proper display

### Styling
- Modify Tailwind classes directly in HTML
- Add custom CSS to `css/index.css`
- Color scheme uses blue/amber palette

## External Dependencies

### CDN Resources
```html
<!-- Tailwind CSS -->
<script src="https://cdn.tailwindcss.com"></script>

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
```

### Embedded Services
- **Google Maps**: Venue location
- **YouTube**: Live streaming embed
- **Social Media**: External links only

## Browser Testing

### Desktop Testing
- Chrome (latest)
- Firefox (latest) 
- Safari (latest)
- Edge (latest)

### Mobile Testing
- iOS Safari
- Android Chrome
- Responsive design tools in DevTools

### Key Test Areas
1. **Countdown Timer**: Verify correct date calculation
2. **Navigation**: Smooth scrolling between sections
3. **Video Overlay**: Fullscreen functionality
4. **Mobile Menu**: Toggle and responsive behavior
5. **Loading Screen**: Proper dismissal timing

## Performance Considerations

### Optimization
- Images are already compressed
- CSS/JS are minimal
- CDN resources load efficiently
- No build optimization needed

### Loading Speed
- Critical CSS inlined in `index-new.html`
- External assets cached by CDN
- Lazy loading for images below fold

## Development Workflow

### Daily Development
1. **Start development server**:
   ```bash
   npm run dev
   ```

2. **Edit files**:
   - HTML: Edit `src/index.html`
   - CSS: Edit `src/css/index.css`
   - JS: Edit `src/js/index.js`
   - Images: Add to `src/images/`

3. **Build deployment files**:
   ```bash
   npm run update-deployment
   # or
   ./update-deployment.sh
   ```
   (Copies all files from src/ to html/)

4. **Preview changes**: Auto-reload in browser at `http://localhost:8080`

### Project Scripts
```bash
npm run dev              # Start live-server for development
npm run preview          # Start server without opening browser
npm run update-deployment # Build deployment files from src/ to html/
npm run deploy-setup     # Setup git branches for deployment
```

## Common Issues

### Live Server Not Starting
- Install Node.js and run `npm install`
- Check if port 8080 is available
- Try alternative: `live-server html/ --port=3000`

### Assets Not Loading
- Run `npm run update-deployment` to build from src/
- Check file paths in `src/index.html`
- Ensure files exist in src/ directory and copied to html/

### Loading Screen Stuck
Check JavaScript console for errors in `src/js/index.js`

### Countdown Not Working
Verify date format: `2025-10-18T00:00:00`

### Mobile Menu Not Working
Check JavaScript event listeners in `src/js/index.js`