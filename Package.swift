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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.2.0/Playgap.xcframework.zip",
            checksum: "d2684f12adade527e2d01acb0be78c2ddeb27ade67533cf50ea0dccd29475d1e"
        )
    ]
)