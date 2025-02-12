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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.0.6/Playgap.xcframework.zip",
            checksum: "5441d5f7e5b01e125ba070da7dc40ce1ec2df6d4bc8ba662087006d42b8b8d3f"
        )
    ]
)