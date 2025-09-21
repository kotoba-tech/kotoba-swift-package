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
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.19/kotoba_tts.xcframework.zip",
            checksum: "dbfe8faac3344f935a4c2ced1edbc87604fe70af98a53a019bdb030680192c8d"
        )
    ]
)
