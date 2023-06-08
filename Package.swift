// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RunestoneThemes",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "RunestoneThemes", targets: ["RunestoneThemes"]),
    ],
    dependencies: [
        .package(url: "https://github.com/simonbs/Runestone", from: "0.2.10"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "RunestoneThemes", dependencies: ["Runestone"]),
    ]
)
