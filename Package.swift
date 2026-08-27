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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.1.7/Playgap.xcframework.zip",
            checksum: "b477a146ed564a5e5206c0bd5af0c2447b6c90c3adb382db23ec6bb6b835d5dd"
        )
    ]
)