// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "PlaygapLevelPlayAdapter",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "PlaygapLevelPlayAdapter",
            targets: ["PlaygapLevelPlayAdapter"])
    ],
    targets: [
        .binaryTarget(
            name: "PlaygapLevelPlayAdapter",
            url: "https://github.com/playgap/ios-sdk/releases/download/<shared-release-tag>/PlaygapLevelPlayAdapter.xcframework.zip",
            checksum: "PLACEHOLDER_CHECKSUM_TO_BE_UPDATED_BY_RELEASE_WORKFLOW"
        )
    ]
)
