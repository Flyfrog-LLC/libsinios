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
            checksum: "19f344d03ced16e04b61e7cd549b08b30f086502cac922ebe818736ec61e16ca"
        )
    ]
)
