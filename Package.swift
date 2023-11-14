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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.0.5/Playgap.xcframework.zip",
            checksum: "4134026a8ef39eb63296d8f194a743e391960802e6e56020f22fbd9d4c15e3f7"
        )
    ]
)