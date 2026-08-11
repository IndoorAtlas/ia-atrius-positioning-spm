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
        .package(url: "https://github.com/Atrius-Wayfinder/wayfinder-ios-sdk.git", exact: "4.2.6"),
        .package(url: "https://github.com/maplibre/maplibre-gl-native-distribution.git", exact: "6.25.0"),
    ],
    targets: [
        .binaryTarget(
            name: "IAAtriusPositioningXCFramework",
            url: "https://dl.cloudsmith.io/public/indooratlas/ios-public-alpha/raw/names/IAAtriusPositioning/versions/1.0.0-alpha2/IAAtriusPositioning-1.0.0-alpha2-23658d4.zip",
            checksum: "942cd03bcd8b0cce0b2ec8930301ac7d2be50becce8bde9a0396bfeeaf760d90"
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
