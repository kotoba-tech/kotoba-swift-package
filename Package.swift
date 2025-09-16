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
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.11/kotoba_tts.xcframework.zip",
            checksum: "5ffe2749326afb856165b84f93156fd9fecc44c4ba77bec44a3d6f2b6a8477da"
        )
    ]
)
