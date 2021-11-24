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
        .package(name: "sourcegear-bridge-aspnetcore", url: "https://github.com/sourcegear/sourcegear-bridge-aspnetcore", .exact("0.3.3")),
    ],
    targets: [
        .target(
            name: "hello",
            dependencies: [
                .product(name: "aspnetcore", package: "sourcegear-bridge-aspnetcore"),
            ]
            ),
    ]
)

