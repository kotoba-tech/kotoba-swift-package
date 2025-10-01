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
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.21/kotoba_tts.xcframework.zip",
            checksum: "145728dfa464a3248a886194f7e16727b7bfb7d5c0a84ddd2a87541d66473fe8"
        )
    ]
)
