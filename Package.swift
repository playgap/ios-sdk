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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.1.5/Playgap.xcframework.zip",
            checksum: "c6ce1c7342bf38da431e06638142ff0089c67053b7f8283f919029f606761d42"
        )
    ]
)