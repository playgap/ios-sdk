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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.0.6/Playgap.xcframework.zip",
            checksum: "c3abb0e423b6ac28c3462a2da86a46f0548375f5b30aa3f3d3d99ea8d2194ba8"
        )
    ]
)