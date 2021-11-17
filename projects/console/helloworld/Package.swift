// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "hello",
    products: [
        .library(
            name: "swift_hello",
            type: .dynamic,
            targets: ["hello"]),
    ],
    dependencies: [
        .package(name: "sourcegear-bridge-dotnet", url: "https://github.com/sourcegear/sourcegear-bridge-dotnet", .exact("0.3.1")),
    ],
    targets: [
        .target(
            name: "hello",
            dependencies: [
                .product(name: "dotnet", package: "sourcegear-bridge-dotnet"),
            ]
            ),
    ]
)

