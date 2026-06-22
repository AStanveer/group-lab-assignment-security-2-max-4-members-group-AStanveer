#!/bin/bash

# Navigate to the frontend directory
cd "$(dirname "$0")/person-bmi-vue-cli-insecure-starter"

echo "=========================================="
echo "Starting Frontend Server"
echo "Directory: $(pwd)"
echo "=========================================="

# Check if dependencies are installed
if [ ! -d "node_modules" ]; then
    echo "Installing npm dependencies..."
    npm install
fi

echo ""
echo "Starting Vue development server..."
echo "Press Ctrl+C to stop"
echo "=========================================="
echo ""

# Start the Vue development server
npm run serve