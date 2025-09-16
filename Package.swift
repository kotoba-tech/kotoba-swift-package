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
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.14/kotoba_tts.xcframework.zip",
            checksum: "3359349e831af11f56d72b0dafe6f11cb8ca6cd596a7c9065b125991b5c809f5"
        )
    ]
)
