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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.3.0/Playgap.xcframework.zip",
            checksum: "bad72a34525ac40c13afa01606bd5d0417fd713441dd45d085756c28dea3c8fc"
        )
    ]
)