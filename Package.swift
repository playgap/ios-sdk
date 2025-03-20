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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.1.3/Playgap.xcframework.zip",
            checksum: "55f6369c2b276dc176de433e692601f27303699a4f8fc49573ad6dea67ff033d"
        )
    ]
)