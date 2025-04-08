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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.2.2/Playgap.xcframework.zip",
            checksum: "3a5889f6d98e8b09e0671d746e03dc00b99928c20a3f32fc7ef3d8fd02873d11"
        )
    ]
)