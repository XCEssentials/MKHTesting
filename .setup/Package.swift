// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "TestingSetup",
    dependencies: [
        .package(url: "https://github.com/kylef/PathKit", from: "1.0.0"),
        .package(url: "https://github.com/XCEssentials/RepoConfigurator", from: "2.7.3")
    ],
    targets: [
        .target(
            name: "TestingSetup",
            dependencies: ["XCERepoConfigurator", "PathKit"],
            path: ".",
            sources: ["main.swift"]
        )
    ]
)