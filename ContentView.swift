import SwiftUI

struct ContentView: View {
    @State var mondayList: [WorkoutInfo] = []
    @State var workout:String = ""
    @State var Sets:Int = 0
    @State var Reps:Int = 0

    var body: some View {
        NavigationView{
            
            ZStack{
                Image("Steve")
                    .offset(x: 140, y: 330)
                    .opacity(0.4)
                ZStack{
                    Image("Weights")
                        .offset(x: -120,y: -300)
                        .opacity(0.4)

                    Image("Barbell")
                        .offset(x: -120, y: -150)
                        .opacity(0.4)
                    Image("People")
                        .offset(x: -100,y: -10)
                        .opacity(0.4)
                    Image("Women")
                        .offset(x: -120, y: 150)                    .opacity(0.4)
                    Image("Walking")
                        .offset(x: -120, y :325)                    .opacity(0.4)
                    Image("Gym")
                        .offset(x: 140, y: -303)                    .opacity(0.4)
                    Image("Dude")
                        .offset(x: 140, y: -150)                    .opacity(0.4)
                    Image("Get it")
                        .offset(x: 140, y: 1)                    .opacity(0.4)
                    Image("Rename")
                        .offset(x: 140, y: 150)                    .opacity(0.4)
                    
                    
                    
                    VStack{
                        NavigationLink(destination: Monday()) {
                            Text("Monday")
                                .frame(width: 175, height: 70, alignment: .center)
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .cornerRadius(15)
                                .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width: 200, height: 50)
                                        .background(LinearGradient(
                                            gradient: Gradient(
                                                colors: [Color.blue, Color.cyan]),
                                            startPoint: .leading,
                                            endPoint: .trailing))
                                        .cornerRadius(25)
                                        .shadow(radius: 10)
                        }
                        NavigationLink(destination: Tuesday()) {
                            Text("Tuesday")
                                .frame(width: 175, height: 70, alignment: .center)
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .cornerRadius(15)
                                .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width: 200, height: 50)
                                        .background(LinearGradient(
                                            gradient: Gradient(
                                                colors: [Color.cyan, Color.blue]),
                                            startPoint: .leading,
                                            endPoint: .trailing))
                                        .cornerRadius(25)
                                        .shadow(radius: 10)
                        }
                        
                        NavigationLink(destination: Wednesday()) {
                            Text("Wednesday")
                                .frame(width: 175, height: 70, alignment: .center)
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .cornerRadius(15)
                                .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width: 200, height: 50)
                                        .background(LinearGradient(
                                            gradient: Gradient(
                                                colors: [Color.blue, Color.cyan]),
                                            startPoint: .leading,
                                            endPoint: .trailing))
                                        .cornerRadius(25)
                                        .shadow(radius: 10)
                        }
                        
                        NavigationLink(destination: Thursday()) {
                            Text("Thursday")
                                .frame(width: 175, height: 70, alignment: .center)
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .cornerRadius(15)
                                .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width: 200, height: 50)
                                        .background(LinearGradient(
                                            gradient: Gradient(
                                                colors: [Color.cyan, Color.blue]),
                                            startPoint: .leading,
                                            endPoint: .trailing))
                                        .cornerRadius(25)
                                        .shadow(radius: 10)
                        }
                        
                        NavigationLink(destination: Friday()) {
                            Text("Friday")
                                .frame(width: 175, height: 70, alignment: .center)
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .cornerRadius(15)
                                .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width: 200, height: 50)
                                        .background(LinearGradient(
                                            gradient: Gradient(
                                                colors: [Color.blue, Color.cyan]),
                                            startPoint: .leading,
                                            endPoint: .trailing))
                                        .cornerRadius(25)
                                        .shadow(radius: 10)
                        }
                        
                        NavigationLink(destination: Saturday()) {
                            Text("Saturday")
                                .frame(width: 175, height: 70, alignment: .center)
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .cornerRadius(15)
                                .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width: 200, height: 50)
                                        .background(LinearGradient(
                                            gradient: Gradient(
                                                colors: [Color.cyan, Color.blue]),
                                            startPoint: .leading,
                                            endPoint: .trailing))
                                        .cornerRadius(25)
                                        .shadow(radius: 10)
                        }
                        
                        
                        NavigationLink(destination: Sunday()) {
                            Text("Sunday")
                                .frame(width: 175, height: 70, alignment: .center)
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .cornerRadius(15)
                                .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width: 200, height: 50)
                                        .background(LinearGradient(
                                            gradient: Gradient(
                                                colors: [Color.blue, Color.cyan]),
                                            startPoint: .leading,
                                            endPoint: .trailing))
                                        .cornerRadius(25)
                                        .shadow(radius: 10)
                        }
                        
                        NavigationLink(destination: MacroView()) {
                            Text("** **NEW** **\nCalorie/Macro Tracker")
                                .frame(width: 400, height: 120, alignment: .center)
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .cornerRadius(15)
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width:350, height: 120)
                                .background(LinearGradient(
                                    gradient: Gradient(
                                        colors: [Color.cyan, Color.blue]),
                                    startPoint: .leading,
                                    endPoint: .trailing))
                                .cornerRadius(25)
                                .shadow(radius: 10)
                            
                        }
                        
                        
                        
                    }
                                .frame(maxWidth: .infinity, maxHeight: .infinity)

                }
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
        
    }
}

