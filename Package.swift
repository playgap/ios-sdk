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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.2.0/Playgap.xcframework.zip",
            checksum: "305029749fe3c9dc06090fd48aed09a2d4bfcbab99337423b07b4940464ca60b"
        )
    ]
)