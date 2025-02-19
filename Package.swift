// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "glTFSceneKit",
    platforms: [
        // specify each minimum deployment requirement,
        //otherwise the platform default minimum is used.
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "glTFSceneKit",
            targets: ["glTFSceneKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/3d4medical/DracoSwiftPackage.git", from: "0.0.9"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "glTFSceneKit",
            dependencies: []),
        .testTarget(
            name: "glTFSceneKitTests",
            dependencies: ["glTFSceneKit"]),
    ]
)


// swift build -Xswiftc "-target" -Xswiftc "x86_64-apple-macosx10.12"

