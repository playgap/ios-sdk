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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.0.1/Playgap.xcframework.zip",
            checksum: "24d7f5ceceee3b0757e42312166d1cd533d8faeed649f95fd3593a96994f0c78"
        )
    ]
)