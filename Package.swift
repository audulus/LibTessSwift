// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "LibTessSwift",
    products: [
        .library(
            name: "LibTessSwift",
            targets: ["LibTessSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Audulus/MiniLexer.git", branch: "master"),
    ],
    targets: [
        .target(
            name: "libtess2",
            dependencies: []),
        .target(
            name: "LibTessSwift",
            dependencies: ["libtess2"]),
        .testTarget(
            name: "LibTessSwiftTests",
            dependencies: ["LibTessSwift", "MiniLexer"]),
    ]
)
