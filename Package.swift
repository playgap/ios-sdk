// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "Playgap",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Playgap",
            targets: ["Playgap"])
    ],
    targets: [
        .binaryTarget(
            name: "Playgap",
            url: "https://github.com/playgap/ios-sdk/releases/download/6.3.1/Playgap.xcframework.zip",
            checksum: "e940caa3f4112955d56da256825b9b1cc7875f8a13826d32316cd678ae3c55a8"
        )
    ]
)