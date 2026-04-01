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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.3.3/Playgap.xcframework.zip",
            checksum: "e5731687027b4acdade22b25755d95cda273b49c486aeea8229b25d8cbc60b3e"
        )
    ]
)