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
            url: "https://github.com/kotoba-tech/kotoba-swift-package/releases/download/1.0.13/kotoba_tts.xcframework.zip",
            checksum: "10097acdc314577d30531ed9c09846395c754b51a9da9785dfd70d4391b889ff"
        )
    ]
)
