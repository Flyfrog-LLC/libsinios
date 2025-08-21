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
            checksum: "f4ce6794276766f5fa39434ee57471f125950c12b3f27d951a806ebb0e5fa22b"
        )
    ]
)
