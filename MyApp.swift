import SwiftUI

@main
struct MyApp: App {
    @State var Final:Tracker = Tracker()
    var body: some Scene {
        WindowGroup {
            ContentView(Final: $Final)
        }
    }
}
