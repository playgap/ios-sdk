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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.1.0/Playgap.xcframework.zip",
            checksum: "bfe831528ed531fb078492588f9f1e271c1b2bd376430486b3137d072245e4e3"
        )
    ]
)