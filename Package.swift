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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.0.4/Playgap.xcframework.zip",
            checksum: "12e67ce4c1c30b288c62e8dbc665dd65c351b5a8790e6174a8053bacd7d5f746"
        )
    ]
)