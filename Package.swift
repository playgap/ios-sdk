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
            url: "https://github.com/playgap/ios-sdk/releases/download/4.0.2/Playgap.xcframework.zip",
            checksum: "06a0c3123895a3acd636dcea3cbd6201324cf0efa972b9e6f4da7b94dceef29d"
        )
    ]
)