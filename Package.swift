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
            url: "https://github.com/playgap/ios-sdk/releases/download/2.1.2/Playgap.xcframework.zip",
            checksum: "16755676b495e94c7c4b5ea463c06948c790105dea626026fb8edcd82f1aeebf"
        )
    ]
)