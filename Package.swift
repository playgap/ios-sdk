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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.0.6/Playgap.xcframework.zip",
            checksum: "a75ccfb249edc7742ff3c019e53c56cb2f30867a2d444a6020440883fcfac0bb"
        )
    ]
)