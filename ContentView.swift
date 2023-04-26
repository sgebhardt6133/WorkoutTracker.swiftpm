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
                print("text")
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

