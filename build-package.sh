#!/usr/bin/env bash

# Check if version argument is provided
if [ $# -eq 0 ]; then
    echo "Error: Version string is required"
    echo "Usage: $0 <version>"
    echo "Example: $0 1.0.9"
    exit 1
fi

VERSION="$1"

# Validate version format (X.Y.Z where X, Y, Z are integers)
if ! [[ "$VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "Error: Invalid version format. Please use X.Y.Z format where X, Y, and Z are integers (e.g., 1.0.9, 2.10.0)"
    exit 1
fi

echo "Building package with version: $VERSION"
echo ""

git submodule update --init --remote --recursive
cd kotoba-swift
./setup-xcframework.sh
rm -rf build/
rm -rf kotoba_tts.xcframework.zip
xcodebuild -project kotoba-swift.xcodeproj \
    -scheme kotoba_tts \
    -configuration Release \
    -sdk iphoneos \
    -derivedDataPath ../build \
    -archivePath ../build/ios-device.xcarchive \
    CODE_SIGNING_ALLOWED=NO \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
    archive
xcodebuild -create-xcframework \
    -framework ../build/ios-device.xcarchive/Products/Library/Frameworks/kotoba_tts.framework \
    -output ../build/kotoba_tts.xcframework
cd ..
echo "Zipping XCFramework..."
cd build
zip -r ../kotoba_tts.xcframework.zip kotoba_tts.xcframework
cd ..
echo "Computing checksum..."
CHECKSUM=$(swift package compute-checksum kotoba_tts.xcframework.zip)
echo "Checksum: $CHECKSUM"
echo "Creating Package.swift..."
cat >| Package.swift << EOF
// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "kotoba_tts",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "kotoba_tts",
            targets: ["kotoba_tts"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "kotoba_tts",
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/$VERSION/kotoba_tts.xcframework.zip",
            checksum: "$CHECKSUM"
        )
    ]
)
EOF

echo "Package.swift created!"
echo ""
echo "Next steps:"
echo "1. Upload build/kotoba_tts.xcframework.zip to GitHub release $VERSION"
echo "2. Commit and push Package.swift"
echo "3. Tag the release with: git tag $VERSION && git push --tags"