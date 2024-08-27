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
            url: "https://github.com/playgap/ios-sdk/releases/download/2.1.3/Playgap.xcframework.zip",
            checksum: "323e513ffa66036004f0de7d923d41cb8edfc18ff67906a3a38a09bcc7c65432"
        )
    ]
)