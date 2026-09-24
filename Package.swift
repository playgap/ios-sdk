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
            url: "https://github.com/playgap/ios-sdk/releases/download/6.2.3/Playgap.xcframework.zip",
            checksum: "c409cc859793775313742e9dd20739643d6bc5d698347d888629bcc160e15c96"
        )
    ]
)