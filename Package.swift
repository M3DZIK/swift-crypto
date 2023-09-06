// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LibCrypto",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LibCrypto",
            targets: ["LibCrypto"]),
    ],
    dependencies: [
        .package(name: "argon2", url: "https://github.com/P-H-C/phc-winner-argon2.git", .branch("master"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LibCrypto",
            dependencies: ["argon2"]),
        .testTarget(
            name: "LibCryptoTests",
            dependencies: ["LibCrypto"]),
    ]
)
