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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.0.0/Playgap.xcframework.zip",
            checksum: "8cfca29eddedd7bf45479a53a451bee2e1847e1426df994ee3dbbc44c8fa5736"
        )
    ]
)