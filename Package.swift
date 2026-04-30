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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.0.0/Playgap.xcframework.zip",
            checksum: "c7ce91b6813c533d45030e52da6e64f89aff1933ac4de5614198c469181dc4ba"
        )
    ]
)