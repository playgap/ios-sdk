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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.1.8/Playgap.xcframework.zip",
            checksum: "55420bb061a7ee26d881a0412c117edd70854fc772ca19abb589305879efea5f"
        )
    ]
)