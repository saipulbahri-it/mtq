# Technical Architecture

## Project Overview

Modern static website for MTQ (Musabaqah Tilawatil Qur'an) Aceh XXXVII 2025 - a Quranic recitation competition event.

## Architecture

### Technology Stack
- **Frontend**: Pure HTML5, CSS3, Vanilla JavaScript
- **Styling**: Tailwind CSS (CDN), Custom CSS
- **Fonts**: Google Fonts (Playfair Display + Inter)
- **No Build System**: Direct file serving

### File Structure
```
/
├── index.html              # Main website (external assets)
├── index-new.html          # Alternative (inline styles)
├── css/index.css           # External stylesheet for index.html
├── js/index.js             # Core JavaScript functionality
├── images/                 # Static assets
│   ├── logo.png
│   └── bupati-dan-wakil-2025.png
├── favicon.ico
└── dev-guide/              # Documentation
```

## Component Architecture

### HTML Structure
- **Semantic sections**: Each major section has unique ID for navigation
- **Responsive grid**: CSS Grid and Flexbox layouts
- **Accessibility**: ARIA labels and semantic markup

### CSS Architecture
- **Design System**: Glass-morphism cards, gradient backgrounds
- **Responsive**: Mobile-first approach with Tailwind breakpoints
- **Animations**: CSS transforms and transitions
- **Typography**: Hierarchy with Playfair Display (headings) + Inter (body)

### JavaScript Modules

**Core Functionality** (`js/index.js`):
```javascript
// Countdown Timer
- Target: October 18, 2025
- Real-time updates every second
- Formatted display (days, hours, minutes, seconds)

// Header Effects
- Scroll-based styling changes
- Mobile menu toggle
- Smooth section navigation

// Loading Screen
- Animated progress bar
- Auto-dismiss after 3 seconds

// Video Overlay
- Fullscreen YouTube embed
- Modal functionality for live streaming
```

## Section Components

### 1. Hero Section (`#beranda`)
- Countdown timer display
- Event information
- Bupati photo card
- Call-to-action buttons

### 2. About Section (`#tentang`) 
- Event details grid
- Statistics cards
- Information hierarchy

### 3. Competition Categories (`#cabang`)
- 6 main categories with icons
- Grid layout with hover effects
- Category descriptions

### 4. Location (`#lokasi`)
- Venue information
- Embedded Google Maps
- Contact details

### 5. Schedule (`#jadwal`)
- Timeline visualization
- Document download links
- Event phases

### 6. News (`#berita`)
- Article cards
- Category tags
- Read more functionality

### 7. Features (`#fitur`)
- Interactive widgets
- Statistics display
- Search functionality

### 8. Live Streaming (`#live`)
- YouTube embed
- Fullscreen overlay
- Social sharing

## Design System

### Color Palette
- **Primary**: Blue variants (#3b82f6, #1d4ed8)
- **Secondary**: Amber/Yellow (#fbbf24, #f59e42)
- **Accent**: Green, Purple, Orange variants
- **Neutral**: Slate scale (#1e293b to #f8fafc)

### Typography Scale
- **Headings**: Playfair Display (serif)
- **Body**: Inter (sans-serif)
- **Sizes**: 5xl/6xl/7xl (hero), 4xl/5xl (sections), xl/2xl (cards)

### Component Patterns
- **Glass Cards**: Backdrop blur with transparency
- **Hover Effects**: Scale transforms and color transitions
- **Loading States**: Skeleton screens and progress indicators
- **Responsive Images**: Lazy loading and optimization

## Integration Points

### External Services
- **Google Fonts**: Typography loading
- **Google Maps**: Location embedding
- **YouTube**: Live streaming integration
- **Social Media**: Link integration (Facebook, Instagram, WhatsApp)

### Data Flow
- **Static Content**: Hardcoded in HTML
- **Dynamic Elements**: JavaScript countdown and interactions
- **Assets**: Local image serving
- **CDN Resources**: Tailwind CSS, Google Fonts