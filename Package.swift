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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.0.5/Playgap.xcframework.zip",
            checksum: "63d76b181078ad24e13e5203f18cb7bf4f94ebbfbd4df7f53dd84db43a877d4e"
        )
    ]
)