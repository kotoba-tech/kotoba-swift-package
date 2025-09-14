// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "kotoba-tts",
    platforms: [
        .iOS(.v18.2)
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
            checksum: "e2d5478bb09897e1195e7a00ef4bbea1d25d76f18612ed6dc60a1f8aaa2c71ed"
        )
    ]
)
