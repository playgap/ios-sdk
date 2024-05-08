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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.3.0/Playgap.xcframework.zip",
            checksum: "073e42717a63759a998ffedd4559426ed1b2175bcb6311042c3b769d7445133d"
        )
    ]
)