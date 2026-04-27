// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SampleAppsCommon",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // library name is the name given when installing the SDK.
        // target name is the name used for `import X`
        .library(name: "SampleAppsCommon", targets: ["SampleAppsCommon"])
    ],
    dependencies: [
        .package(path: "../../") // import local CIO SDK to use internally.
    ],
    targets: [
        .target(
            name: "SampleAppsCommon",
            dependencies: [
                // List the modules from the Zixflow iOS SDK that you actually use
                .product(name: "DataPipelines", package: "zixflow-ios"),
                .product(name: "MessagingPushAPN", package: "zixflow-ios"),
                .product(name: "MessagingInApp", package: "zixflow-ios"),
                .product(name: "Location", package: "zixflow-ios")
            ],
            path: "Source"
        )
    ]
)
