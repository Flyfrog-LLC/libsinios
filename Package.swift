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
            checksum: "498524e852d5cc9f19137dcd0116b994883869ee5e0b971a93070a6ac0cb5db6"
        )
    ]
)
