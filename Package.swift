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
            url: "https://github.com/playgap/ios-sdk/releases/download/4.0.8/Playgap.xcframework.zip",
            checksum: "6832b0bf659942bd8aca1e6939a11c9d3db9d30be8e90b3faa63b594d4c94c49"
        )
    ]
)