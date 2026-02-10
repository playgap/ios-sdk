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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.1.0/Playgap.xcframework.zip",
            checksum: "c851b0cf25ccece5158ccc2396262ca611a5be0159a49830a683d89760e2fcf6"
        )
    ]
)