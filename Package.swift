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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.2.0/Playgap.xcframework.zip",
            checksum: "c453153d62a7e7859ca56ddc2916fe7a5b68c55074079c80393ab1a4cb4b9e5d"
        )
    ]
)