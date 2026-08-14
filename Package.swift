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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.1.4/Playgap.xcframework.zip",
            checksum: "9d2bafdec687062c6a12c509cb00ecd8eb5f7efc08c5e9c109b362cbc009daca"
        )
    ]
)