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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.1.3/Playgap.xcframework.zip",
            checksum: "a22de1fdf6570749fe5aa506fbc79fe7630142f1c247c867857e1a6b926ec61a"
        )
    ]
)