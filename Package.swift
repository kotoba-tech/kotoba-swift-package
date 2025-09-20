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
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.18/kotoba_tts.xcframework.zip",
            checksum: "ff3c0142bf3470c32a1323b6214ef01b61e89ce7b6dec3e888fb5cb3f7d3e1f2"
        )
    ]
)
