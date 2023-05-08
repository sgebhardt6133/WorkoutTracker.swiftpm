import SwiftUI

struct ContentView: View {
    @State var workout:String = ""
    @State var Sets:Int = 0
    @State var Reps:Int = 0
    @State var ExerciseArray: [Exercise] = []
    var body: some View {
        NavigationView{
            ZStack{
                Image("Steve")
                    .offset(x: 140, y: 330)
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
                    Image("Gym")
                        .offset(x: 140, y: -303)
                    Image("Dude")
                        .offset(x: 140, y: -150)
                    Image("Get it")
                        .offset(x: 140, y: 1)
                    Image("Rename")
                        .offset(x: 140, y: 150)
                    
                    
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
                                                colors: [Color.yellow, Color.red]),
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
                                                colors: [Color.red, Color.yellow]),
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
                                                colors: [Color.yellow, Color.red]),
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
                                                colors: [Color.yellow, Color.blue]),
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
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
        
    }
}
