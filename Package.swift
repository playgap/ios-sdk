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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.1.6/Playgap.xcframework.zip",
            checksum: "53732b562d23f1b55ef8888d6ae0fdf197d6f3ff23c3ce6dfc864b3e1836bdf6"
        )
    ]
)