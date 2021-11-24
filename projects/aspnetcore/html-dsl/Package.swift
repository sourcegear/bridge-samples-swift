// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "html-dsl",
    products: [
        .library(
            name: "swift_html",
            type: .dynamic,
            targets: ["html"]),
    ],
    dependencies: [
        .package(name: "sourcegear-bridge-aspnetcore", url: "https://github.com/sourcegear/sourcegear-bridge-aspnetcore", .exact("0.3.3")),
        .package(url: "https://github.com/johnsundell/plot.git", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "html",
            dependencies: [
                .product(name: "aspnetcore", package: "sourcegear-bridge-aspnetcore"),
                .product(name: "Plot", package: "plot"),
            ]
            ),
    ]
)

