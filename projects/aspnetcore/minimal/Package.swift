// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "consoleApp",
    products: [
        .library(
            name: "consoleApp",
            type: .dynamic,
            targets: ["app"]),
    ],
    dependencies: [
        .package(name: "sourcegear-bridge-aspnetcore", url: "https://github.com/sourcegear/sourcegear-bridge-aspnetcore", .exact("0.3.3")),
    ],
    targets: [
        .target(
            name: "app",
            dependencies: [
                .product(name: "aspnetcore", package: "sourcegear-bridge-aspnetcore")
            ]
            ),
    ]
)

