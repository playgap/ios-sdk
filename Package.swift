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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.2.3/Playgap.xcframework.zip",
            checksum: "5936ecc9ded89d185d10297213a136c356951584a60f6596394c2d2bc921f18c"
        )
    ]
)