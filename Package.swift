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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.2.4/Playgap.xcframework.zip",
            checksum: "372eb2a68e4e703b99f98498ceb9eca99d806c942575a90b9feb845eae82b629"
        )
    ]
)