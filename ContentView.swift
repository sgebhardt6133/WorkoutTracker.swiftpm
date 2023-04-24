import SwiftUI

struct ContentView: View {
    @State var workout:String = ""
    @State var Sets:Integer = 0
    @State var Reps
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
        }
    }
}
