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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.0.1/Playgap.xcframework.zip",
            checksum: "95cf98c49e6ae7b3593d06080e15f4e13e08e9bf3dab3ee85cc508a7bab33f98"
        )
    ]
)