//
//  Titlescreen.swift
//  WorkoutTracker
//
//  Created by Nathan Marotta  on 4/28/23.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
            NavigationView {
                VStack{
                    
                    VStack {
                        Text("Welcome to ")
                            .font(.largeTitle)
                        Text("Workout Tracker")
                            .font(.largeTitle)
                                                }
                    Image("logo")
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Go to App")
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
    }
}

