#!/bin/sh

# Exit immediately if a command exits with a non-zero status
set -e

echo "Running flutter pub get and prebuild steps..."
flutter pub get

# Optional: Run iOS build to generate xcconfig files
flutter build ios --no-codesign

echo "ci_post_clone.sh finished"
chmod +x ci_post_clone.sh
