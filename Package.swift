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
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.7/kotoba_tts.xcframework.zip",
            checksum: "1b963adc9fa53c7cf01a9f7310cce7471d609af9b4a9cf37aaac96b8b8f6bc95"
        )
    ]
)
