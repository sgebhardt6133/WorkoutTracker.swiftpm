import SwiftUI

struct ContentView: View {
    @State var workout:String = ""
    @State var Sets:Int = 0
    @State var Reps:Int = 0
    @State var ExerciseArray: [Exercise] = []
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink("Monday"){
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
        .navigationViewStyle(.stack)
        
    }
}
