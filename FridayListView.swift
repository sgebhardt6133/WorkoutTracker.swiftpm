//
//  FridayListView.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 01/03/1402 AP.
//

import SwiftUI

struct FridayListView: View {
    @State var totalWeight = 0
    let currentWorkout:WorkoutInfo
    
    var body: some View {
        VStack{
            Text(currentWorkout.exercise)
                .fontWeight(.bold)
            Text("Sets: \(currentWorkout.sets)")
            Text("Reps: \(currentWorkout.reps)")
            Text("Weight: \(currentWorkout.weight)")

            
            }
        let reps1 = Int(currentWorkout.reps)
        let sets1 = Int(currentWorkout.sets)
//        func TotalWeight(){
//            totalWeight = WorkoutInfo.sets * WorkoutInfo.reps * WorkoutInfo.weight
//        }
        }
}
