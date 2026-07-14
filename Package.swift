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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.1.2/Playgap.xcframework.zip",
            checksum: "bda915178f33657fa8f9d72866241d1a9ef7b72f9424c4207070ff6d82afccd5"
        )
    ]
)