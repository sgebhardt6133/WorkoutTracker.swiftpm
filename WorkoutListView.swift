//
//  WorkoutListView.swift
//  WorkoutTracker
//
//  Created by Jak Flaherty on 5/2/23.
//

import SwiftUI

struct WorkoutListView: View {
    
    let currentWorkout:WorkoutInfo
    
    var body: some View {
        
        VStack{
            Text(currentWorkout.exercise)
                .font(.largeTitle)
            Text("Sets: \(currentWorkout.sets)")
            Text("Reps: \(currentWorkout.reps)")
            Text("Weight: \(currentWorkout.weight)lbs")
           
        }
    }
}






