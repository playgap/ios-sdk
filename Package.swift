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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.1.0/Playgap.xcframework.zip",
            checksum: "ba07262e3ae8f6085f91682a8a2f0bddcef9d68f54aa010d1d1de13e74c8bec3"
        )
    ]
)