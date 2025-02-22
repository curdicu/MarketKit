// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "MarketKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "MarketKit",
            targets: ["MarketKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/groue/GRDB.swift.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "4.1.0")),
        .package(url: "https://github.com/curdicu/HsToolKit.git", .branch( "main")),
        .package(url: "https://github.com/curdicu/HsExtensions.git", .branch( "main")),
    ],
    targets: [
        .target(
            name: "MarketKit",
            dependencies: [
                .product(name: "GRDB", package: "GRDB.swift"),
                "ObjectMapper",
                .product(name: "HsToolKit", package: "HsToolKit"),
                .product(name: "HsExtensions", package: "HsExtensions"),
            ],
            resources: [
                .copy("Dumps"),
            ]
        ),
    ]
)
