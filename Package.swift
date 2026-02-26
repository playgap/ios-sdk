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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.2.2/Playgap.xcframework.zip",
            checksum: "d04fdb7ca3cecb4fca0e975b8453c1ec943099f7fe555ec3fa73157f1d4f64f4"
        )
    ]
)