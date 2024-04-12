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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.2.1/Playgap.xcframework.zip",
            checksum: "46d97ce3ced3324fab0bd4355382e9bcedc1d68f8f6b458eb1d5e90e571b5aaa"
        )
    ]
)