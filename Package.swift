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
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.22/kotoba_tts.xcframework.zip",
            checksum: "5dfcf7da0eedd8a0bd2d6f1f52c1a71eae4545328a05ca5f16efbeb1a9f78210"
        )
    ]
)
