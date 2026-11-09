// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "IAAtriusPositioning",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "IAAtriusPositioning",
            targets: ["IAAtriusPositioningWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/IndoorAtlas/ios-spm.git", exact: "3.8.1"),
        .package(url: "https://github.com/Atrius-Wayfinder/wayfinder-ios-sdk.git", exact: "4.2.9"),
        .package(url: "https://github.com/maplibre/maplibre-gl-native-distribution.git", exact: "6.25.0"),
    ],
    targets: [
        .binaryTarget(
            name: "IAAtriusPositioningXCFramework",
            url: "https://dl.cloudsmith.io/public/indooratlas/ios-public-alpha/raw/names/IAAtriusPositioning/versions/1.0.0-alpha5/IAAtriusPositioning-1.0.0-alpha5-d0542e7.zip",
            checksum: "28b169a3a64aac6adc82a4d31ffb243eba8d6e4bb06559d21f74c0a3c97aec86"
        ),
        .target(
            name: "IAAtriusPositioningWrapper",
            dependencies: [
                .target(name: "IAAtriusPositioningXCFramework"),
                .product(name: "IndoorAtlas", package: "ios-spm"),
                .product(name: "LocusLabsSDK", package: "wayfinder-ios-sdk"),
                .product(name: "MapLibre", package: "maplibre-gl-native-distribution"),
            ]
        ),
    ]
)
