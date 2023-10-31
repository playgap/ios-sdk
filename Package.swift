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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.0.4/Playgap.xcframework.zip",
            checksum: "512f37989496c204e6bf3360c4db23443996a14ff6ca018b990ed279bca33e14"
        )
    ]
)