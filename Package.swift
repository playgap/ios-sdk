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
            url: "https://github.com/playgap/ios-sdk/releases/download/4.1.1/Playgap.xcframework.zip",
            checksum: "f15f55ae7d298de9ecfcf00d1c5519abe5719c104bd9779eab81bc8a1d7bae13"
        )
    ]
)