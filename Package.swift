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
            name: "Libbox",
            targets: ["Libbox"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "Libbox",
            url: "https://github.com/Flyfrog-LLC/libsinios/releases/download/v1.12.2/Libbox.xcframework.zip",
            checksum: "759eaf89f4ede877439776018a47be1e067ecf05aca9de0bd6f70f4df5ce06af"
        )
    ]
)
