import SwiftUI

struct ContentView: View {
    @State var workout:String = ""
    @State var Sets:Int = 0
    @State var Reps:Int = 0
    @State var ExerciseArray: [Exercise] = []
    var body: some View {
        NavigationView{
            ZStack{
              Image("Weights")
                    .offset(x: -120,y: -300)
                Image("Barbell")
                    .offset(x: -120, y: -150)
                Image("People")
                    .offset(x: -100,y: -10)
                Image("Women")
                    .offset(x: -120, y: 150)
                Image("Walking")
                    .offset(x: -120, y :325)
                VStack{
                    NavigationLink(destination: Monday()) {
                        Text("Monday")
                            .frame(width: 175, height: 70, alignment: .center)
                            .foregroundColor(.white)
                            .background(.orange)
                            .font(.largeTitle)
                            .cornerRadius(15)
                    }
                    NavigationLink(destination: Tuesday()) {
                        Text("Tuesday")
                            .frame(width: 175, height: 70, alignment: .center)
                            .foregroundColor(.white)
                            .background(.orange)
                            .font(.largeTitle)
                            .cornerRadius(15)
                    }
                    
                    NavigationLink(destination: Wednesday()) {
                        Text("Wednesday")
                            .frame(width: 175, height: 70, alignment: .center)
                            .foregroundColor(.white)
                            .background(.orange)
                            .font(.largeTitle)
                            .cornerRadius(15)
                    }
                    
                    NavigationLink(destination: Thursday()) {
                        Text("Thursday")
                            .frame(width: 175, height: 70, alignment: .center)
                            .foregroundColor(.white)
                            .background(.orange)
                            .font(.largeTitle)
                            .cornerRadius(15)
                    }
                    
                    NavigationLink(destination: Friday()) {
                        Text("Friday")
                            .frame(width: 175, height: 70, alignment: .center)
                            .foregroundColor(.white)
                            .background(.orange)
                            .font(.largeTitle)
                            .cornerRadius(15)
                    }
                    
                    NavigationLink(destination: Saturday()) {
                        Text("Saturday")
                            .frame(width: 175, height: 70, alignment: .center)
                            .foregroundColor(.white)
                            .background(.orange)
                            .font(.largeTitle)
                            .cornerRadius(15)
                    }
                    
                    
                    NavigationLink(destination: Sunday()) {
                        Text("Sunday")
                            .frame(width: 175, height: 70, alignment: .center)
                            .foregroundColor(.white)
                            .background(.orange)
                            .font(.largeTitle)
                            .cornerRadius(15)
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
        
    }
}

