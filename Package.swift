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
            url: "https://github.com/playgap/ios-sdk/releases/download/5.0.2/Playgap.xcframework.zip",
            checksum: "349dbecdb0fa2382a1576b445b56679f495cbfacb18e947f4e4132de038a0c38"
        )
    ]
)