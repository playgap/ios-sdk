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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.1.2/Playgap.xcframework.zip",
            checksum: "384a2f46f14807cc99c80995e819a257342b18dae4963263d4297efc072b4f30"
        )
    ]
)