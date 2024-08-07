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
            url: "https://github.com/playgap/ios-sdk/releases/download/2.1.1/Playgap.xcframework.zip",
            checksum: "bc26f8da7a563d80166ecc189e1ca7646d4a2cac5aa770643254186d71830fb3"
        )
    ]
)