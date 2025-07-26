#!/bin/bash

# MTQ Website - Update Deployment Files
# Copy source files to html/ directory for deployment

echo "🔄 Updating deployment files..."

# Check if we're in the right directory
if [ ! -f "src/index.html" ]; then
    echo "❌ Error: src/index.html not found. Make sure you're in the project root."
    exit 1
fi

# Check if html directory exists
if [ ! -d "html" ]; then
    echo "📁 Creating html/ directory..."
    mkdir -p html
fi

# Copy files from src/ to html/
echo "📄 Copying index.html from src/..."
cp src/index.html html/ 2>/dev/null || echo "⚠️  src/index.html not found"

echo "🎨 Copying CSS files from src/..."
cp -r src/css html/ 2>/dev/null || echo "⚠️  src/css/ directory not found"

echo "⚡ Copying JavaScript files from src/..."
cp -r src/js html/ 2>/dev/null || echo "⚠️  src/js/ directory not found"

echo "🖼️  Copying images from src/..."
cp -r src/images html/ 2>/dev/null || echo "⚠️  src/images/ directory not found"

echo "🔗 Copying favicon from src/..."
cp src/favicon.ico html/ 2>/dev/null || echo "⚠️  src/favicon.ico not found"

# Note: All source files are now in src/ directory
# Files are copied from src/ to html/ for deployment

# Verify deployment files
echo ""
echo "✅ Deployment files updated successfully!"
echo ""
echo "📋 Files in html/ directory:"
ls -la html/

echo ""
echo "🚀 Ready for deployment!"
echo "💡 Next steps:"
echo "   1. git add ."
echo "   2. git commit -m 'feat: update deployment files'"
echo "   3. git checkout html"
echo "   4. cp -r html/* ."
echo "   5. git add . && git commit -m 'deploy: update website'"
echo "   6. git push origin html"