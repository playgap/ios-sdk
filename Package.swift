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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.0.2/Playgap.xcframework.zip",
            checksum: "c6ab4182b78fba1e80285a474979158e0d7cd2dbef86acdfde1fc3fca1e7f8b3"
        )
    ]
)