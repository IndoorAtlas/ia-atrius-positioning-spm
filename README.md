# IAAtriusPositioning (Swift Package)

IndoorAtlas indoor positioning for Atrius (LocusLabs) maps, with train detection.
Drives the blue dot on an Atrius 2D map using IndoorAtlas indoor positioning; while
on a train the blue dot follows raw GPS and indoor positioning resumes automatically
at the next station.

This package vends the same binary distributed via CocoaPods
(`pod 'IAAtriusPositioning'`) and pulls in IndoorAtlas, the Atrius Wayfinder SDK
(LocusLabsSDK) and MapLibre transitively.

## Installation

In Xcode: **File → Add Package Dependencies…** and enter

```
https://github.com/IndoorAtlas/ia-atrius-positioning-spm
```

Prerelease versions must be selected explicitly (exact version), e.g. `1.0.0-alpha3`.

Or in `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/IndoorAtlas/ia-atrius-positioning-spm.git",
             exact: "1.0.0-alpha3")
]
```

Then `import IAAtriusPositioning`.

## License

Copyright (c) IndoorAtlas Ltd. All rights reserved. See LICENSE.md bundled inside
`IAAtriusPositioning.framework`.
