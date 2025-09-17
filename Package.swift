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
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.15/kotoba_tts.xcframework.zip",
            checksum: "74b2b9e37f92f975627655e85ea18c6ac72a2939e08b3610f4dd3d3d5d61bc60"
        )
    ]
)
