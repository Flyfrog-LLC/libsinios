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
            url: "https://github.com/Flyfrog-LLC/libsinios/releases/download/v1.12.0/Libbox.xcframework.zip",
            checksum: "caefdee3792fdc468b220367d6c7d7ad9b11d9d2827001be051c9ed4f71859f8"
        )
    ]
)
