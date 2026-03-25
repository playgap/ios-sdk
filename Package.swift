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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.3.2/Playgap.xcframework.zip",
            checksum: "c63e568d1f26fd3e1a844001e79a2dd45f4c1000358483b76729d376bc5922a0"
        )
    ]
)