// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "kotoba-tts",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "kotoba-tts",
            targets: ["kotoba-tts"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "kotoba-tts",
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.0/kotoba-tts.xcframework.zip",
            checksum: "b72c23523fcc381536b49c925e176c686803be0d4d01b0b0d1e55580c8f68bf4"
        )
    ]
)
