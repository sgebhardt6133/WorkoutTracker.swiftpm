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
    @State var newSets: String  = ""
    @State var newReps: String = ""
    @State var newWeight: Int?
    
    var body: some View {
        VStack {
            TextField("Enter Exercise", text: $newExercise)
                .border(.black)
            
            TextField("Enter sets", text: $newSets)
                .border(.black)
            
            TextField("Enter reps", text: $newReps)
                .border(.black)
            
            TextField("Enter weight (in lbs)", value: $newWeight, format: .number)
                .border(.black)
            
            Button("Add Exercise") {
                
                
//                guard let unwrappedSets = newSets else  { return }
//                guard let unwrappedReps = newReps else  { return }
                guard let unwrappedWeight = newWeight else  { return }
                
                let newWorkout = WorkoutInfo(exercise: newExercise, sets: newSets, reps: newReps, weight: unwrappedWeight)
                workoutList.append(newWorkout)
                newExercise = ""
                newSets = ""
                newReps = ""
                newWeight = nil
                
            }
            List{
                
                ForEach(workoutList, id: \.self){ currentWorkout in
                    WorkoutListView(currentWorkout: currentWorkout)
                }
                .onDelete { (indexSet) in
                    if let index = indexSet.first {
                        self.workoutList.remove(at: index)
                    }
                }
                                    
            }
        }
    }
}
