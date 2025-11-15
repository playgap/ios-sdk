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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.0.3/Playgap.xcframework.zip",
            checksum: "9b217a21b06d1d647449faaa0da90476d08eb28287a10458b5c15718c3538080"
        )
    ]
)