#!/bin/sh
# Exit if any command fails
set -e

echo "🔥 Running Flutter setup"

# Set Flutter to correct version (if using fvm or specific)
flutter --version

# Install dependencies
flutter pub get

# Generate iOS required files (like Generated.xcconfig)
flutter build ios --no-codesign

echo "✅ Flutter iOS prebuild completed"
