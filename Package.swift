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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.3.3/Playgap.xcframework.zip",
            checksum: "3a689b872e98ea6b996fee890932e1c0d58c57dac90d5383bc1c8fbff08f17e7"
        )
    ]
)