// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftThemes",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "SwiftThemes", targets: ["SwiftThemes"]),
        .library(name: "RunestoneThemes", targets: ["RunestoneThemes"]),
    ],
    dependencies: [
        .package(url: "https://github.com/simonbs/Runestone", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "SwiftThemes"),
        .target(name: "RunestoneThemes", dependencies: ["Runestone", "SwiftThemes"]),
    ]
)
