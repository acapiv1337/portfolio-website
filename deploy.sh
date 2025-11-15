#!/bin/bash

# Simple deployment script for portfolio website
# This can be used as a git hook or run manually

echo "🏗️ Building portfolio website..."
cd /home/acap/portfolio-website

# Install dependencies if needed
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
fi

# Build the project
echo "🔨 Building project..."
npm run build

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    
    # Deploy to web server
    echo "🚀 Deploying to web server..."
    sudo cp -r dist/* /var/www/html/
    sudo chown -R www-data:www-data /var/www/html/
    sudo chmod -R 755 /var/www/html/
    
    echo "🎉 Deployment completed successfully!"
    echo "Your website is live at your server's address"
else
    echo "❌ Build failed! Please check the errors above."
    exit 1
fi