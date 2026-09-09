// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "PlaygapAdMobAdapter",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "PlaygapAdMobAdapter",
            targets: ["PlaygapAdMobAdapter"])
    ],
    targets: [
        .binaryTarget(
            name: "PlaygapAdMobAdapter",
            url: "https://github.com/playgap/ios-sdk/releases/download/<shared-release-tag>/PlaygapAdMobAdapter.xcframework.zip",
            checksum: "PLACEHOLDER_CHECKSUM_TO_BE_UPDATED_BY_RELEASE_WORKFLOW"
        )
    ]
)
