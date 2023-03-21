// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppNavigation",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "AppNavigation",
            targets: ["AppNavigation"]),
    ],
    dependencies: [
        .package(
            name: "Common",
            path: "../Core/Common"
        )
    ],
    targets: [
        .target(
            name: "AppNavigation",
            dependencies: ["Common"]),
        .testTarget(
            name: "AppNavigationTests",
            dependencies: ["AppNavigation"]),
    ]
)
