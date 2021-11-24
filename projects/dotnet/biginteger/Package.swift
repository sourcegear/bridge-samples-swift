// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "biginteger",
    products: [
        .library(
            name: "swift_biginteger",
            type: .dynamic,
            targets: ["biginteger"]),
    ],
    dependencies: [
        .package(name: "sourcegear-bridge-dotnet", url: "https://github.com/sourcegear/sourcegear-bridge-dotnet", .exact("0.3.3")),
    ],
    targets: [
        .target(
            name: "biginteger",
            dependencies: [
                .product(name: "dotnet", package: "sourcegear-bridge-dotnet"),
            ]
            ),
    ]
)

