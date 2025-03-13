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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.1.1/Playgap.xcframework.zip",
            checksum: "b359719317af7e8c19c8de83752cd6f217b0504279e14dc31e057a805fddd44e"
        )
    ]
)