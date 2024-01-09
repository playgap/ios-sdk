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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.0.8/Playgap.xcframework.zip",
            checksum: "4449d31206abe589027164756fbea3b1a97ccfc475b022520268e1b00456c651"
        )
    ]
)