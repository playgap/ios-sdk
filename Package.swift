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
            url: "https://github.com/playgap/ios-sdk/releases/download/2.0.0/Playgap.xcframework.zip",
            checksum: "73f4a31cd7ab9137e06b7c381a0512a4128e00233739463511093cd0caf33190"
        )
    ]
)