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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.2.1/Playgap.xcframework.zip",
            checksum: "6553058dee020e3c0b9a734cdea1803cf9c9fb0f42e2fb093eaa88eaa18db747"
        )
    ]
)