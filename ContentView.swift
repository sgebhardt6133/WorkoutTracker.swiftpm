import SwiftUI

struct ContentView: View {
    @State var workout:String = ""
    @State var Sets:Int = 0
    @State var Reps:Int = 0
    @State var ExerciseArray: [Exercise] = []
    var body: some View {
        NavigationView{
           
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
                                                colors: [Color.orange, Color.yellow]),
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
                                                colors: [Color.orange, Color.red]),
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
                                                colors: [Color.red, Color.yellow]),
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
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
        
    }
}
