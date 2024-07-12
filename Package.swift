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
            url: "https://github.com/playgap/ios-sdk/releases/download/2.0.1/Playgap.xcframework.zip",
            checksum: "49528d904c3270e5fe996c201f84b2dab6288d367e0346c963a6b64981ef5d24"
        )
    ]
)