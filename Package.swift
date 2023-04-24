// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "WorkoutTracker",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "WorkoutTracker",
            targets: ["AppModule"],
            bundleIdentifier: "org.jhhs.626133.WorkoutTracker",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .butterfly),
            accentColor: .presetColor(.cyan),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)