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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.0.7/Playgap.xcframework.zip",
            checksum: "f1bda43280b7f1aecaa684efe12cfc9e3b2826781048a516548bda214c25c41a"
        )
    ]
)