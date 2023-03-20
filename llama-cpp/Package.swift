// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "Llama",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "Llama", targets: ["Llama"]),
        .library(name: "LlamaWrapper", targets: ["LlamaWrapper"]),
    ],
    targets: [
        .target(
            name: "Llama",
            path: "Sources/Llama",
            cSettings: [
               .unsafeFlags(["-w", "-fPIC", "-pthread"]),
               .define("GGML_USE_ACCELERATE"),
               .define("NDEBUG")
            ],
            cxxSettings: [
                .unsafeFlags(["-w", "-fPIC", "-pthread"]),
            ],
            linkerSettings: [
                .linkedFramework("Accelerate")
            ]
        ),
        .target(
            name: "LlamaWrapper",
            dependencies: ["Llama"]
        ),
    ],
    cLanguageStandard: .c11,
    cxxLanguageStandard: .gnucxx11
)
