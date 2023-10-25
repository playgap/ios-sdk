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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.0.2/Playgap.xcframework.zip",
            checksum: "a183a96d0059801c3bf7d1d4b13f235967fb1c5d4ebd98d5f1d66d6fce189e17"
        )
    ]
)