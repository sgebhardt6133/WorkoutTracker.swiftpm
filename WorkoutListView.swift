//
//  WorkoutListView.swift
//  WorkoutTracker
//
//  Created by Jak Flaherty on 5/2/23.
//

import SwiftUI

struct WorkoutListView: View {
    
    let currentWorkout:WorkoutInfo
    @EnvironmentObject var items: ItemsClass
    
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






