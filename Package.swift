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
            url: "https://github.com/playgap/ios-sdk/releases/download/4.0.5/Playgap.xcframework.zip",
            checksum: "371810a8983ed0e81daf0d06028b0c84d0cac4876e10d6531e0307773673d7da"
        )
    ]
)