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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.0.2/Playgap.xcframework.zip",
            checksum: "34258c77177b1444cebb32f6656484c76ed88d29525ee698dab5f816a8a9b790"
        )
    ]
)