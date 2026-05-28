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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.0.3/Playgap.xcframework.zip",
            checksum: "2d391c17149005df011c1abe45cbb65cb95c387ad52116e79ac34ace5c7b8ad7"
        )
    ]
)