//
//  MacroView.swift
//  WorkoutTracker
//
//  Created by Jak Flaherty on 5/24/23.
//

import SwiftUI

struct MacroView: View {
    
    @State var calories: Int?
    @State var unwrappedCalories = 0
    @State var protein: Int?
     @State var unwrappedProtein = 0
    @State var fats: Int?
     @State var unwrappedFats = 0
    @State var carbs: Int?
     @State var unwrappedCarbs = 0
    
    
    var body: some View {
        
        VStack{
            HStack{
                Text("Welcome to the Macro Tracker")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
               
                Spacer()
            }
            
            Text("Here you can track your daily calorie and macro intake")
            
            HStack{
                
                VStack{
                    TextField("Enter Calories", value: $calories, format: .number)
                        .frame(width: 300, height: 20)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                     
                    
                    TextField("Enter Protein", value: $protein, format: .number)
                        .frame(width: 300, height: 20)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    

                    
                    TextField("Enter Fats", value: $fats, format: .number)
                        .frame(width: 300, height: 20)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                     

                    
                    TextField("Enter Carbs", value: $carbs, format: .number)
                        .frame(width: 300, height: 20)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                     
                    
                    
                    Button(action: {
                        
                        guard let unwrapped1 = calories else { return }
                        unwrappedCalories = unwrapped1
                        calories = nil
                        guard let unwrapped2 = protein else { return }
                        unwrappedProtein = unwrapped2
                        protein = nil
                        guard let unwrapped3 = fats else { return }
                        unwrappedFats = unwrapped3
                        fats = nil
                        guard let unwrapped4 = carbs else { return }
                        unwrappedCarbs = unwrapped4
                        carbs = nil
                    }, label: {
                        Text("Update Macros")
                    })
                    
                    Button(action: {
                        unwrappedCalories = 0
                        unwrappedProtein = 0
                        unwrappedFats = 0
                        unwrappedCarbs = 0
                        
                    }, label: {
                        Text("Reset Macros")
                    })

                    
                    
                    
                }
                Spacer()
            }
            
            Text("Today's Calories: \(unwrappedCalories)")
            
              Text("Today's Protein Intake: \(unwrappedProtein)g")
            
              Text("Today's Fats Intake: \(unwrappedFats)g")
            
              Text("Today's Carbs Intake: \(unwrappedCarbs)g")
                
        
            
        }
    }
}
