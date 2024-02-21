# Chapter 1

## Windows

You can create one or more windows in your visionOS app. They’re built with SwiftUI and contain traditional views and controls, and you can add depth to your experience by adding 3D content.

👉 Windows can be created just like we create windows for iOS and macOS apps.

```
import SwiftUI

@main
struct VisionProApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

## Volumes

Add depth to your app with a 3D volume. Volumes are SwiftUI scenes that can showcase 3D content using RealityKit or Unity, creating experiences that are viewable from any angle in the Shared Space or an app’s Full Space.

👉 Volume can be created by simply changing the window style to volumetric. We can also provide the default size and depth for the 3D model.

```
import SwiftUI

@main
struct VisionProApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 400, height: 400, depth: 400)
    }
}
```

## Spaces

By default, apps launch into the Shared Space, where they exist side by side — much like multiple apps on a Mac desktop. Apps can use Windows and Volumes to show content, and the user can reposition these elements wherever they like. For a more immersive experience, an app can open a dedicated Full Space where only that app’s content will appear. Inside a Full Space, an app can use windows and volumes, create unbounded 3D content, open a portal to a different world, or even fully immerse people in an environment.

👉 To add a FullSpace, simply add an ImmeriveSpace Scene with ID in the App Scene, and with the ID, we can call it just like we call Windows in SwiftUI.

There are three types of Immersion styles available:
Mixed: Where the User co-exists with the real world.
Progressive: It’s a middle ground where the Immersion level can be controlled by the digital crown.
Full: Becomes Fully Immersive and hides the people’s surroundings.

```
import SwiftUI

@main
struct VisionProApp: App {
    
    @State private var immersionStyle: ImmersionStyle = .mixed
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        ImmersiveSpace(id: "Immersion_View") {
            PlanneView()
        }
        .immersionStyle(selection: $immersionStyle, in: .mixed, .progressive, .full)
    }
}
```
