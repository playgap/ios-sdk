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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.0.5/Playgap.xcframework.zip",
            checksum: "89e3a3bf4498dc3c855bbb39ad0aa2f680eff73082661c283de756138dd73cc6"
        )
    ]
)