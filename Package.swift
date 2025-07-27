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
            url: "https://github.com/playgap/ios-sdk/releases/download/4.0.7/Playgap.xcframework.zip",
            checksum: "4d1ec6253f0b2513ba941846dc463b0497d064695499dd83f3e1311e0aaf2bc4"
        )
    ]
)