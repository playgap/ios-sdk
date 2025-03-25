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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.2.0/Playgap.xcframework.zip",
            checksum: "3e28639e5cde9f2e54f6038a0e8e3f16d8a3dd92b25bd47476f02bb404c6a41b"
        )
    ]
)