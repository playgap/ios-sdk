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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.0.1/Playgap.xcframework.zip",
            checksum: "f165db75208d1edc3dc4728c2e950d57bf56bd3cfc83385ad5863f29b88235c5"
        )
    ]
)