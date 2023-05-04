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
                    
                    Text("WorkoutTracker")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                    
                    NavigationLink(destination: ContentView()) { 
                        Text("Go to App")
                            .frame(width: 175, height: 70, alignment: .center)
                            .foregroundColor(.white)
                            .background(.blue)
                            .font(.largeTitle)
                            .cornerRadius(15)
                        
                        
                    }
                    
                    
                    
            }
        }
            .navigationViewStyle(.stack)
    }
}

