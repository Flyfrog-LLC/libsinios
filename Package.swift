// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Libbox",
    platforms: [
        .iOS(.v15),
        .macCatalyst(.v15)
    ],
    products: [
        .library(
            name: "LibboxApp",
            targets: ["LibboxApp"]
        ),
        .library(
            name: "LibboxTunnel",
            targets: ["LibboxTunnel"]
        )
    ],
    targets: [
        // raw binary
        .binaryTarget(
            name: "LibboxBinary",
            url: "https://github.com/Flyfrog-LLC/libsinios/releases/download/v1.12.0/Libbox.xcframework.zip",
            checksum: "7020abc4c55d2caab55cba870cf20a19cc175fec32d19d86482abf616771399e"
        ),

        // dirty trick
        .target(
            name: "LibboxApp",
            dependencies: ["LibboxBinary"],
            path: "Wrappers/App",
            sources: ["Dummy.swift"]
        ),
        .target(
            name: "LibboxTunnel",
            dependencies: ["LibboxBinary"],
            path: "Wrappers/Tunnel",
            sources: ["Dummy.swift"]
        )
    ]
)
