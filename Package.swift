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
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.12/kotoba_tts.xcframework.zip",
            checksum: "d888dc71845ef16522d14cc0e6e52e4fcee5872fe5e77fb5cdce82fd6e392a34"
        )
    ]
)
