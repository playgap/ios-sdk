// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "PlaygapMaxAdapter",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "PlaygapMaxAdapter",
            targets: ["PlaygapMaxAdapter"])
    ],
    targets: [
        .binaryTarget(
            name: "PlaygapMaxAdapter",
            url: "https://github.com/playgap/ios-sdk/releases/download/<shared-release-tag>/PlaygapMaxAdapter.xcframework.zip",
            checksum: "PLACEHOLDER_CHECKSUM_TO_BE_UPDATED_BY_RELEASE_WORKFLOW"
        )
    ]
)
