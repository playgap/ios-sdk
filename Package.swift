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
            url: "https://github.com/playgap/ios-sdk/releases/download/4.0.6/Playgap.xcframework.zip",
            checksum: "b326be13fe3f2b7545b88bbf30e6e9aa03a24602f47e238e767db9ba93db9dfa"
        )
    ]
)