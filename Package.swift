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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.0.7/Playgap.xcframework.zip",
            checksum: "b62827cc05da8c444ae53ceff0e314a150215f4bab26586c5fc2b41e96b83711"
        )
    ]
)