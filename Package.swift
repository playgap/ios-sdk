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
            url: "https://github.com/playgap/ios-sdk/releases/download/4.0.3/Playgap.xcframework.zip",
            checksum: "71801158237a037d2c92dd9ca40f55f30944d2e247337d18a193fafc532faeaf"
        )
    ]
)