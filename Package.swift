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
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.17/kotoba_tts.xcframework.zip",
            checksum: "5c89e6d92be080bd7a21d4d0aba52f6fdcbf1fed2f14abaabb09bcbc926bd07c"
        )
    ]
)
