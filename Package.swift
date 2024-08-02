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
            url: "https://github.com/playgap/ios-sdk/releases/download/2.1.0/Playgap.xcframework.zip",
            checksum: "b5e0e5fc234b56d3a055e469c2d14e409c853e82b22360ee607d289adf386cd9"
        )
    ]
)