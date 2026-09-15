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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.2.2/Playgap.xcframework.zip",
            checksum: "6a6ba6a3cf1a3de7d0365ec437479a9cf1e1b833e22b7aaf9ce18ad4da8cab82"
        )
    ]
)