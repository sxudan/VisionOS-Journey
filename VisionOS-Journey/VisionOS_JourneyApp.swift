//
//  VisionOS_JourneyApp.swift
//  VisionOS-Journey
//
//  Created by xkal on 22/2/2024.
//

import SwiftUI

@main
struct VisionOS_JourneyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
