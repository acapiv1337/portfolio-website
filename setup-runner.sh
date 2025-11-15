#!/bin/bash

# GitHub Actions Self-Hosted Runner Setup Script
# This script will help you set up a self-hosted runner for your portfolio website

echo "🚀 Setting up GitHub Actions Self-Hosted Runner"
echo "=============================================="

# Check if running as root
if [ "$EUID" -eq 0 ]; then 
    echo "❌ Please don't run this script as root"
    echo "Run it as your regular user (acap)"
    exit 1
fi

# Create actions runner directory
RUNNER_DIR="$HOME/actions-runner"
echo "📁 Creating runner directory at: $RUNNER_DIR"
mkdir -p $RUNNER_DIR
cd $RUNNER_DIR

# Download the latest runner package
echo "⬇️ Downloading GitHub Actions Runner..."
curl -o actions-runner-linux-x64-2.311.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.311.0/actions-runner-linux-x64-2.311.0.tar.gz

# Optional: Validate the hash
echo "🔍 Validating package..."
echo "29fc8cf2dab4c195bb147384e7e2c94cfd4d4022c793b346a6175435265aa278  actions-runner-linux-x64-2.311.0.tar.gz" | shasum -a 256 -c

# Extract the installer
echo "📦 Extracting runner package..."
tar xzf ./actions-runner-linux-x64-2.311.0.tar.gz

echo ""
echo "✅ Runner package installed!"
echo ""
echo "🔧 Next steps:"
echo "1. Go to your GitHub repository: https://github.com/acapiv1337/portfolio-website"
echo "2. Navigate to: Settings → Actions → Runners → New self-hosted runner"
echo "3. Copy the configuration command that GitHub provides"
echo "4. Run it in this directory: $RUNNER_DIR"
echo "5. When prompted, name your runner: 'portfolio-server'"
echo "6. Start the runner with: ./run.sh"
echo ""
echo "📝 Example configuration command (you'll get a unique token):"
echo "./config.sh --url https://github.com/acapiv1337/portfolio-website --token YOUR_TOKEN"
echo ""
echo "🎯 Summary:"
echo "- Runner installed in: $RUNNER_DIR"
echo "- Configure it with GitHub token"
echo "- The workflow will automatically build and deploy on every commit to main branch"
echo "- Your website will be deployed to /var/www/html/"