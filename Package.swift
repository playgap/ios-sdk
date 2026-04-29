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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.4.2/Playgap.xcframework.zip",
            checksum: "f31bb01ba089998258fda7519a1257cb1f3e178e63f99ad115e1e5ee2702533c"
        )
    ]
)