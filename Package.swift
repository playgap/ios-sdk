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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.0.4/Playgap.xcframework.zip",
            checksum: "4ea0c6ede349b7fd0758373787a98552ff1355702ef77c54361d9b65f65f2559"
        )
    ]
)