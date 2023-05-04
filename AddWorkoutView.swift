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
    @State var newSets: Int?
    @State var newReps: Int?
    @State var newWeight: Int?
    
    var body: some View {
        VStack {
            TextField("Enter Exercise", text: $newExercise)
                .border(.black)
            
            TextField("Enter sets", value: $newSets, format: .number)
                .border(.black)
            
            TextField("Enter reps", value: $newReps, format: .number)
                .border(.black)
            
            TextField("Enter weight (in lbs)", value: $newWeight, format: .number)
                .border(.black)
            
            Button("Add Exercise") {
                
                
                guard let unwrappedSets = newSets else  { return }
                guard let unwrappedReps = newReps else  { return }
                guard let unwrappedWeight = newWeight else  { return }
                
                let newWorkout = WorkoutInfo(exercise: newExercise, sets: unwrappedSets, reps: unwrappedReps, weight: unwrappedWeight)
                workoutList.append(newWorkout)
                newExercise = ""
                newSets = nil
                newReps = nil
                newWeight = nil
                
            }
            List(workoutList, id: \.self){ currentWorkout in
                WorkoutListView(currentWorkout: currentWorkout)
            }
            
        }
    }
}
