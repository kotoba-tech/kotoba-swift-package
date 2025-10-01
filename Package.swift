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
            checksum: "4c9b1cd11ae08f2ff152c2f0e4746f59c1208818e4bfe312402b8a56182fe59f"
        )
    ]
)
