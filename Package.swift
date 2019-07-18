// swift-tools-version:5.1
import PackageDescription

let package = Package( name: "SwiftyBPE",
    products: [
        .executable( name: "swiftybpe", targets: ["swiftybpe"]),
        .library( name: "CFastBPE", targets: ["CFastBPE"]),
    ],
    targets: [
        .target( name: "swiftybpe", dependencies: ["CFastBPE"]),
        .target( name: "CFastBPE",  linkerSettings: [.linkedLibrary("pthread")]),
    ]
)

