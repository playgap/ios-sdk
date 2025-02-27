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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.0.8/Playgap.xcframework.zip",
            checksum: "17924798a15317537f4fa6e77b435d621ba66fae7c5c75f152a27a8214d6bbd0"
        )
    ]
)