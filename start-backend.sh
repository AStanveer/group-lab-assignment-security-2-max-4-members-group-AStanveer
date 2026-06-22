#!/bin/bash

# Navigate to the backend directory
cd "$(dirname "$0")/person-bmi-slim-insecure-backend"

echo "=========================================="
echo "Starting Backend Server"
echo "Directory: $(pwd)"
echo "=========================================="

# Check if composer dependencies are installed
if [ ! -d "vendor" ]; then
    echo "Installing PHP dependencies..."
    if command -v composer &> /dev/null; then
        composer install
    else
        echo "Error: Composer not found. Please install Composer first."
        echo "You can install it with: brew install composer"
        exit 1
    fi
fi

# Create .env file if it doesn't exist
if [ ! -f ".env" ]; then
    echo "Creating .env file..."
    if [ -f ".env.example" ]; then
        cp .env.example .env
        echo "Created .env from .env.example"
    else
        echo "Warning: .env.example not found. Creating default .env"
        cat > .env << EOF
DB_HOST=localhost
DB_NAME=person_bmi
DB_USER=root
DB_PASS=
JWT_SECRET=your_jwt_secret_key_here
EOF
    fi
fi

echo ""
echo "Starting PHP server at http://localhost:8080"
echo "Document root: $(pwd)/public"
echo "Press Ctrl+C to stop"
echo "=========================================="
echo ""

# Start PHP built-in server
php -S localhost:8080 -t public