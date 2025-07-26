# dev-guide.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a modern, static website for MTQ (Musabaqah Tilawatil Qur'an) Aceh XXXVII 2025, held in Pidie Jaya. The website serves as an information portal for the Quranic recitation competition scheduled for October 18-25, 2025.

## Architecture

- **Static HTML Website**: Pure HTML, CSS, and vanilla JavaScript
- **No build system**: Files can be opened directly in browsers
- **CDN Dependencies**: Tailwind CSS via CDN, Google Fonts
- **Two main versions**: `index.html` (external CSS/JS) and `index-new.html` (inline styles)

## File Structure

```
/
├── index.html          # Main version with external CSS/JS
├── index-new.html      # Alternative version with inline styles
├── css/                # External stylesheets (referenced by index.html)
│   └── index.css
├── styles/             # Additional stylesheets
│   └── index.css
├── js/                 # JavaScript modules
│   └── index.js
├── images/             # Static assets
│   ├── logo.png
│   └── bupati-dan-wakil-2025.png
└── favicon.ico
```

## Development Commands

Since this is a static HTML project:

- **View website**: Open HTML files directly in browser or use `python -m http.server 8000` for local server
- **No compilation needed**: Edit files directly and refresh browser
- **No linting/testing commands**: Manual code review and browser testing

## Key Features & Components

### Core Functionality:

- **Countdown Timer**: JavaScript countdown to event date (October 18, 2025)
- **Loading Screen**: Animated loading with progress bar
- **Responsive Design**: Mobile-first using Tailwind CSS classes
- **Smooth Scrolling**: Section navigation with scroll effects
- **Live Streaming**: Embedded YouTube iframe with fullscreen overlay

### Design System:

- **Typography**: Playfair Display (headings) + Inter (body text)
- **Theme**: Modern bright theme with blue/gray gradients and glass-morphism cards
- **Animations**: CSS transforms, hover effects, and scroll-triggered animations

### Section Architecture:

- `#beranda` - Hero with countdown and event info
- `#tentang` - About section with event details
- `#cabang` - Competition categories (Tilawah, Hifzh, Tafsir, etc.)
- `#lokasi` - Venue information with embedded Google Maps
- `#jadwal` - Schedule timeline and document downloads
- `#berita` - News articles with card layout
- `#fitur` - Interactive features (download center, calendar, statistics)
- `#live` - YouTube live streaming with fullscreen functionality

## JavaScript Architecture

Located in `js/index.js`:

- **Countdown functionality**: Real-time countdown with proper date formatting
- **Header scroll effects**: Dynamic header styling on scroll
- **Loading screen management**: Automatic dismissal after page load
- **Mobile menu interactions**: Toggle functionality for responsive navigation
- **Video overlay system**: Fullscreen video modal for live streaming

## Content Management

- **Indonesian language** (`lang="id"`) throughout
- **Event details**: MTQ Aceh XXXVII, October 18-25, 2025
- **Location**: Kabupaten Pidie Jaya with embedded maps
- **Competition categories**: 6 main categories with descriptions
- **Social media integration**: Facebook, Instagram, YouTube, WhatsApp links

## Enhancement Roadmap

Reference `Saran Perbaikan Website MTQ Aceh XXXVII.md` for comprehensive improvement suggestions including PWA implementation, real-time scoring, interactive maps, and CMS integration.
