//
//  SaturdayListView.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 03/03/1402 AP.
//

import SwiftUI

struct SaturdayListView: View {
    let currentWorkout:WorkoutInfo
    
    var body: some View {
        VStack{
            Text(currentWorkout.exercise)
                .fontWeight(.bold)
            Text("Sets: \(currentWorkout.sets)")
            Text("Reps: \(currentWorkout.reps)")
            Text("Weight: \(currentWorkout.weight)")
            Text("\(currentWorkout.month) \(currentWorkout.day) \(currentWorkout.year)")


        }
    }
}

