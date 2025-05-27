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
            url: "https://github.com/playgap/ios-sdk/releases/download/4.0.1/Playgap.xcframework.zip",
            checksum: "a2041876c0b6dc12a2eaf918ea70cc0331fc5236840c7a01c439bc9f2dd72396"
        )
    ]
)