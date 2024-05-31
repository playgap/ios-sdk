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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.3.2/Playgap.xcframework.zip",
            checksum: "abe3af2f8e4eab391179f826202b19af73c9abfe915c84071e3ab7452f6fbbd4"
        )
    ]
)