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
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.2/kotoba-tts.xcframework.zip",
            checksum: "11e54c2390c7473f6bbdb9c3ffcb49c4b91916592c4f2c16e83047b69eb95e45"
        )
    ]
)
