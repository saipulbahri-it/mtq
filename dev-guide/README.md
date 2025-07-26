# Development Guide - MTQ Aceh XXXVII Website

This directory provides comprehensive guidance for developing and maintaining the MTQ (Musabaqah Tilawatil Qur'an) Aceh XXXVII website.

## Quick Start

This is a static HTML website for MTQ Aceh XXXVII 2025 in Pidie Jaya - a Quranic recitation competition scheduled for October 18-25, 2025.

**Development Commands:**
```bash
# View website locally
open index.html
# or
python -m http.server 8000
```

## Project Structure

- **Static HTML**: No build system required
- **CDN Dependencies**: Tailwind CSS, Google Fonts
- **Two versions**: `index.html` (external assets) and `index-new.html` (inline)

## Documentation Structure

- [`architecture.md`](./architecture.md) - Technical architecture and code organization
- [`setup.md`](./setup.md) - Development environment setup
- [`workflows.md`](./workflows.md) - Development workflows and enhancement roadmap

## Key Information

- **Language**: Indonesian (`lang="id"`)
- **Event Date**: October 18-25, 2025
- **Location**: Kabupaten Pidie Jaya
- **Countdown Target**: `2025-10-18T00:00:00`

## Quick Reference

**Main Sections:**
- `#beranda` - Hero with countdown
- `#tentang` - About event
- `#cabang` - Competition categories
- `#lokasi` - Venue information
- `#jadwal` - Schedule
- `#berita` - News
- `#fitur` - Interactive features
- `#live` - Live streaming

**Key Files:**
- `index.html` - Main website
- `js/index.js` - JavaScript functionality
- `css/index.css` - External styles
- `images/` - Static assets