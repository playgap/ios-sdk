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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.0.4/Playgap.xcframework.zip",
            checksum: "5d754c275ca7461e59523abbf7e7047a92d0ddd975b5a8af2e7fdc7482488aec"
        )
    ]
)