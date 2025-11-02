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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.0.1/Playgap.xcframework.zip",
            checksum: "e1cd4192ffee6aec92b534c663a538378432c9a1fe39f945f97024b0e7188d79"
        )
    ]
)