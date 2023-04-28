import SwiftUI

struct ContentView: View {
    @State var workout:String = ""
    @State var Sets:Int = 0
    @State var Reps:Int = 0
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: Monday()) { 
                    Text("Monday")
                }
                NavigationLink(destination: Tuesday()) {
                Text("Tuesday")
                }
                NavigationLink(destination: Wednesday()) {
                    Text("Wednesday")
                }
                NavigationLink(destination: Thursday()) {
                    Text("Thursday")
                }
                NavigationLink(destination: Friday()) {
                    Text("Friday")
                }
                NavigationLink(destination: Saturday()) {
                    Text("Saturday")
                }
                NavigationLink(destination: Sunday()) {
                    Text("Sunday")
                }
            }
        }
        .navigationViewStyle(.stack)
//        .navigationBarBackButtonHidden(true)
        
    }
}
