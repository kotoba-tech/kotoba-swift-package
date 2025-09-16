#!/usr/bin/env bash

VERSION="1.0.7"

git submodule update --init --remote --recursive
cd kotoba-swift
./setup-xcframework.sh
rm -rf build/
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