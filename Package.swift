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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.0.0/Playgap.xcframework.zip",
            checksum: "9027f47ce669349fd9231b32f29dbcd58c12f6979187bd91b8d9df7b49d4212f"
        )
    ]
)