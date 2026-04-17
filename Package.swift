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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.4.1/Playgap.xcframework.zip",
            checksum: "b6f18adec0b0af71d7cfa2bda23052a73a840ed3b0d8eb5b62de25737a225dd3"
        )
    ]
)