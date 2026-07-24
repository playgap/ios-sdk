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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.1.3/Playgap.xcframework.zip",
            checksum: "242038ba39d1b1545be5dd3d3ed64cdca60dd56527d8fa056a0d65b395e4f739"
        )
    ]
)