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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.4.0/Playgap.xcframework.zip",
            checksum: "c345b6bf880f87b0d061a913eed144ca253e172dcf008a485b3716c551d967d5"
        )
    ]
)