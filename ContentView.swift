import SwiftUI

struct ContentView: View {
    @State var workout:String = ""
    @State var Sets:Int = 0
    @State var Reps:Int = 0
    var body: some View {
        VStack {
            
            TextField("Enter Workout", text: $workout)
            Button("Monday"){
                
            }
            Button("Tuesday"){
                
            }
            Button("Wednesday"){
                
            }
            Button("Thursday"){
                
            }
            Button("Friday"){
                
            }
            Button("Saturday"){
                
            }
            Button("Sunday"){
                
            }
            if #available(iOS 16.0, *) {
                NavigationStack {
                    Text("Hello, World!").padding()
                        .navigationTitle("SwiftUI")
                        .toolbar {
                            ToolbarItem(placement: .bottomBar) {
                                Button("Press Me") {
                                    print("Pressed")
                                }
                            }
                        }
                }
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
