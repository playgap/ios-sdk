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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.0.3/Playgap.xcframework.zip",
            checksum: "7c5db13d13653f5ce6e6974ff51418216410cdfa3859a5e80f850bb830a74b29"
        )
    ]
)