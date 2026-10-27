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
        .package(url: "https://github.com/Atrius-Wayfinder/wayfinder-ios-sdk.git", exact: "4.2.8"),
        .package(url: "https://github.com/maplibre/maplibre-gl-native-distribution.git", exact: "6.25.0"),
    ],
    targets: [
        .binaryTarget(
            name: "IAAtriusPositioningXCFramework",
            url: "https://dl.cloudsmith.io/public/indooratlas/ios-public-alpha/raw/names/IAAtriusPositioning/versions/1.0.0-alpha4/IAAtriusPositioning-1.0.0-alpha4-c9dcdfc.zip",
            checksum: "ec1ca1460a4ffb89ae8885d4073c9e37b2095a3e2fe10833497c601a80a049af"
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
