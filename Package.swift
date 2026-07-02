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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.1.1/Playgap.xcframework.zip",
            checksum: "96d5e14359b3d4481a2e15eee0e593b2fd7ec52041cac843283a742941eea15d"
        )
    ]
)