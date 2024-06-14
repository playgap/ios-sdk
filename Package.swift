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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.3.4/Playgap.xcframework.zip",
            checksum: "e79e9f86559a2b341964e65af84ba06c185dd9f67901fc1c242fbc6bab894359"
        )
    ]
)