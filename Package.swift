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
            url: "https://github.com/playgap/ios-sdk/releases/download/3.1.0/Playgap.xcframework.zip",
            checksum: "9e419671f09e17c4281a459919d44c2d0e41e33700673ef56e14ee2aa20fdd09"
        )
    ]
)