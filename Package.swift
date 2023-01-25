// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TreeSitterKotlin",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterKotlin", targets: ["TreeSitterKotlin"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterKotlin",
                path: ".",
                sources: [
                    "src/parser.c",
                    "src/scanner.c",
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")])
    ]
)
