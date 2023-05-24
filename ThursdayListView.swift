//
//  ThursdayListView.swift
//  WorkoutTracker
//
//  Created by Jak Flaherty on 5/22/23.
//

import SwiftUI

struct ThursdayListView: View {
    
    let currentWorkout:WorkoutInfo
    
    
    var body: some View {
        
        VStack{
            Text(currentWorkout.exercise)
                .fontWeight(.bold)
            Text("Sets: \(currentWorkout.sets)")
            Text("Reps: \(currentWorkout.reps)")
            Text("Weight: \(currentWorkout.weight)lbs")
            
        }
    }
}



