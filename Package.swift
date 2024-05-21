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
            url: "https://github.com/playgap/ios-sdk/releases/download/1.3.1/Playgap.xcframework.zip",
            checksum: "ed5ba1312fde84f01f447da27d426c93258c66487133c6828d387e66b76aec28"
        )
    ]
)