// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "json",
    products: [
        .library(
            name: "swift_json",
            type: .dynamic,
            targets: ["json"]),
    ],
    dependencies: [
        .package(name: "sourcegear-bridge-dotnet", url: "https://github.com/sourcegear/sourcegear-bridge-dotnet", .exact("0.3.2")),
    ],
    targets: [
        .target(
            name: "json",
            dependencies: [
                .product(name: "dotnet", package: "sourcegear-bridge-dotnet"),
            ]
            ),
    ]
)

