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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.3.1/Playgap.xcframework.zip",
            checksum: "3deac2c75abbf9d2022b5c463da6f79d0ac9f9178f2b28443576e5df669f89c8"
        )
    ]
)