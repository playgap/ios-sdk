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
            url: "https://github.com/playgap/ios-sdk/releases/download/4.0.9/Playgap.xcframework.zip",
            checksum: "7ff192f19a90d710073f7f91d33bdfe7a8c9cb07da4f23c8f5c1173cdff19248"
        )
    ]
)