// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "httpget",
    products: [
        .library(
            name: "swift_httpget",
            type: .dynamic,
            targets: ["httpget"]),
    ],
    dependencies: [
        .package(name: "sourcegear-bridge-dotnet", url: "https://github.com/sourcegear/sourcegear-bridge-dotnet", .exact("0.3.1")),
    ],
    targets: [
        .target(
            name: "httpget",
            dependencies: [
                .product(name: "dotnet", package: "sourcegear-bridge-dotnet"),
            ]
            ),
    ]
)

