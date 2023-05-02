//
//  AddWorkoutView.swift
//  WorkoutTracker
//
//  Created by Jak Flaherty on 5/2/23.
//

import SwiftUI

struct AddWorkoutView: View {
    
    @Binding var workoutList:[WorkoutInfo]
    @State var newExercise: String = ""
    @State var newSets: Int = 0
    @State var newReps: Int = 0
    @State var newWeight: Int = 0
    
    var body: some View {
        VStack {
            TextField("Enter Exercise", text: $newExercise)
            
            TextField("Enter sets", value: $newSets, format: .number)
            
            TextField("Enter reps", value: $newReps, format: .number)
            
            TextField("Enter weight", value: $newWeight, format: .number)
            
            Button("Add Exercise") {
                let newWorkout = WorkoutInfo(exercise: newExercise, sets: newSets, reps: newReps, weight: newWeight)
                workoutList.append(newWorkout)
                newExercise = ""
                newSets = 0
                newReps = 0
                newWeight = 0
                
            }
            List(workoutList, id: \.self){ currentWorkout in
                WorkoutListView(currentWorkout: currentWorkout)
            }
            
        }
    }
}

