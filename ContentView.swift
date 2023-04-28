import SwiftUI

struct ContentView: View {
    @State var workout:String = ""
    @State var Sets:Int = 0
    @State var Reps:Int = 0
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink("Monday"){
                    MondayView(Final: $Final)
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
