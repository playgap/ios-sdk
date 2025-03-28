// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "Playgap",
    products: [
        .library(
            name: "Playgap",
            targets: ["Playgap"])
    ],
    targets: [
        .binaryTarget(
            name: "Playgap",
            url: "https://github.com/playgap/ios-sdk/releases/download/3.2.1/Playgap.xcframework.zip",
            checksum: "59cab4ffe101154d62a8afc3f6853163d8d1b68835b772f1f14b0f7826eb4dee"
        )
    ]
)