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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.2.4/Playgap.xcframework.zip",
            checksum: "4443bdb68d487f0cc60ab544530ee052545df77b9968c378457aa140df7bc708"
        )
    ]
)