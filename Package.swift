// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "XCETesting",
    products: [
        .library(
            name: "XCETesting",
            targets: [
                "XCETesting"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/XCEssentials/Requirement",
            from: "2.0.0"
        )
    ],
    targets: [
        .target(
            name: "XCETesting",
            dependencies: [
                "XCERequirement"
            ],
            path: "Sources/Core"
        ),
        .testTarget(
            name: "XCETestingAllTests",
            dependencies: [
                "XCETesting",
                "XCERequirement"
            ],
            path: "Tests/AllTests"
        ),
    ],
    swiftLanguageVersions: [.v5]
)