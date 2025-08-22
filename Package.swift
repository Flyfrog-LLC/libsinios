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
            checksum: "2310e6009aaa345a61cea373697acad98c21de560dee494d06ef22c730cb3e70"
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
