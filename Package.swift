// swift-tools-version:5.1
import PackageDescription

let package = Package( name: "SwiftyBPE",
    products: [
        .executable( name: "swiftbpe", targets: ["swiftbpe"]),
        .library( name: "SwiftyBPE", targets: ["SwiftyBPE"]),
    ],
    targets: [
        .target( name: "swiftbpe", dependencies: ["SwiftyBPE"]),
        .target( name: "SwiftyBPE", dependencies: ["CFastBPE"]),
        .target( name: "CFastBPE",  dependencies: ["fastBPE"]),
        .target( name: "fastBPE", linkerSettings: [.linkedLibrary("pthread")]),
    ]
)

