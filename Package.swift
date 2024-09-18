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
            url: "https://github.com/playgap/ios-sdk/releases/download/2.1.4/Playgap.xcframework.zip",
            checksum: "426bf53efc63d5730b6b73e39f4bb892dc8d925b36d33b55c83401aa41929ce3"
        )
    ]
)