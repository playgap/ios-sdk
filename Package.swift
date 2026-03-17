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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.3.0/Playgap.xcframework.zip",
            checksum: "a25ebf7d83f2bacb1ff7863790e73b26f45041188d876072518692280c48b3d2"
        )
    ]
)