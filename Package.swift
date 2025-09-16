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
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.9/kotoba_tts.xcframework.zip",
            checksum: "eb25a651b3b29b908215f2efab027bbbd3f3afa712de85d858c3fa6eea0d678c"
        )
    ]
)
