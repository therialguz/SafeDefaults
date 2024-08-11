// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "SafeDefaults",
    platforms: [
        .macOS(.v13),
        .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SafeDefaults",
            targets: ["SafeDefaults"]
        ),
    ], 
    dependencies: [
        .package(url: "https://github.com/apple/swift-syntax", from: "510.0.0"),
        .package(url: "https://github.com/stackotter/swift-macro-toolkit.git", from: "510.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SafeDefaults",
            dependencies: [
                "SafeDefaultsMacros"
            ]
        ),
        .testTarget(
            name: "SafeDefaultsTests",
            dependencies: [
                "SafeDefaults",
                "SafeDefaultsMacros",
                .product(name: "SwiftSyntaxMacrosTestSupport", package: "swift-syntax")
            ]
        ),
        
        // Macro implementation that performs the source transformation of a macro.
        .macro(
            name: "SafeDefaultsMacros",
            dependencies: [
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax")
            ]
        ),
    ]
)
