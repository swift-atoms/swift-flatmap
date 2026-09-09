// swift-tools-version: 6.4
import PackageDescription
let package = Package(
    name: "swift-flatmap",
    platforms: [.macOS(.v27), .iOS(.v27), .tvOS(.v27), .watchOS(.v27), .visionOS(.v27)],
    products: [.library(name: "FlatMap", targets: ["FlatMap"])],
    targets: [
        .target(name: "FlatMap"),
        .testTarget(name: "FlatMap Tests", dependencies: ["FlatMap"]),
    ],
    swiftLanguageModes: [.v6]
)
for target in package.targets {
    target.swiftSettings = [
        .strictMemorySafety(),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
        .enableUpcomingFeature("InferIsolatedConformances"),
        .enableExperimentalFeature("Lifetimes"),
        .enableExperimentalFeature("MoveOnlyTuples"),
    ]
}
