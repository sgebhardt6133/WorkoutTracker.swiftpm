import SwiftUI

@main
struct MyApp: App {
    @State var items:ItemsClass = ItemsClass()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
