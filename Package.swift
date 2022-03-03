// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FMDBMigrationManager",
    products: [
        .library(name: "FMDBMigrationManager", targets: ["FMDBMigrationManager"]),
    ],
    dependencies: [
        .package(name: "FMDB", url: "https://github.com/ccgus/fmdb", from: "2.0.0")
    ],
    targets: [
        .target(
            name: "FMDBMigrationManager",
            dependencies: ["FMDB"],
            path: "Sources",
            publicHeadersPath: "."
        )
    ]
)
