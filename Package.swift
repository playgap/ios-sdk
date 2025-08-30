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
            url: "https://github.com/playgap/ios-sdk/releases/download/4.1.0/Playgap.xcframework.zip",
            checksum: "eba6399f283810f5f71ac24ee672c6ba8d24e792b1b50cd7842294f43c5da7ea"
        )
    ]
)