// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "Octopus",
    platforms: [
        .macOS(.v27)
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.8.2")
    ],
    targets: [
        .executableTarget(
            name: "Octopus",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ],
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency")
            ],
        ),
        .testTarget(
            name: "OctopusTests",
            dependencies: ["Octopus"],
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency")
            ],
        ),
    ]
)
