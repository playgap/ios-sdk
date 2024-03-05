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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.1.2/Playgap.xcframework.zip",
            checksum: "0585e7e3b9b843ac237ba1d0f2589259dd8f27c5805b02960660e91a10ed1bed"
        )
    ]
)