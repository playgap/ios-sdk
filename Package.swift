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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.2.1/Playgap.xcframework.zip",
            checksum: "7322f269effb1344d762781834fb8d5697b80dc6ed52a8ce3ab34e49788b7fb5"
        )
    ]
)