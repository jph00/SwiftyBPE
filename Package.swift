// swift-tools-version:5.1
import PackageDescription

let package = Package( name: "SwiftyBPE",
    products: [
        .executable( name: "swiftbpe", targets: ["swiftbpe"]),
        .library( name: "CFastBPE", targets: ["CFastBPE"]),
    ],
    targets: [
        .target( name: "swiftbpe", dependencies: ["CFastBPE"]),
        .target( name: "CFastBPE",  dependencies: ["fastBPE"]),
        .target( name: "fastBPE",  linkerSettings: [.linkedLibrary("pthread")]),
    ]
)

