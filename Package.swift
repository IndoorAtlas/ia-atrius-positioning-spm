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
            url: "https://dl.cloudsmith.io/public/indooratlas/ios-public-alpha/raw/names/IAAtriusPositioning/versions/1.0.0-alpha3/IAAtriusPositioning-1.0.0-alpha3-5b34d48.zip",
            checksum: "01b59e98181702769b51936cd66d1bb4768ae971c838bf6c23a57d9247d99731"
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
