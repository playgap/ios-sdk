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
            url: "https://github.com/playgap/ios-sdk/releases/download/4.0.0/Playgap.xcframework.zip",
            checksum: "964b17841a57aea50b96632d176f85990729fff2b65a759cc4cbd14e0a74289c"
        )
    ]
)