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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.4.3/Playgap.xcframework.zip",
            checksum: "3efd27336067dea2e1e72dc7d67e0cfd8c1d1e11e4ea78e99111983e789eb537"
        )
    ]
)