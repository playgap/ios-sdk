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
            url: "https://github.com/playgap/ios-sdk/releases/download/4.0.4/Playgap.xcframework.zip",
            checksum: "d51904dc88bd47d10c422b9f161f460a045bc7f90174a8f1e29a8fd40ed2434c"
        )
    ]
)