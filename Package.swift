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
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.20/kotoba_tts.xcframework.zip",
            checksum: "0f76b1d37188c18860a821718cc0f47bc174522dcec0522bfb44ebf34b51df01"
        )
    ]
)
