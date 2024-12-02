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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.0.3/Playgap.xcframework.zip",
            checksum: "ca06eb2e74ebab461b281e622be260d6f95fbd58d155d0c5e195b23deb328928"
        )
    ]
)