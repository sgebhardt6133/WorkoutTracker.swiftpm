//
//  Tuesday.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 06/02/1402 AP.
//

import SwiftUI
struct Tuesday: View {
    var body: some View {
        VStack{}
    }
}
//struct Tuesday: View {
//    @State var newWorkout: String = ""
//    @State var newSets: Int = 0
//    @State var newReps: Int = 0
//    @State var newWeight: Int = 0
//    @State var ExerciseArray: [Exercise] = []
//    var body: some View {
//        HStack{
//            TextField("Lift/Exercise:", text: $newWorkout)
//            TextField("Sets:", value: $newSets, formatter: NumberFormatter())
//            TextField("Reps", value: $newReps, formatter: NumberFormatter())
//            TextField("Weight:", value: $newWeight, formatter: NumberFormatter())
//            
//            Button(action: {
//                            let newExercise = Exercise(Workout: newWorkout, Sets: newSets, Reps: newReps, Weight: newWeight)
//                            ExerciseArray.append(newExercise)
//                            newWorkout = ""
//                            newSets = 0
//                            newReps = 0
//                            newWeight = 0
//                        }, label: {
//                            Image(systemName: "folder.badge.plus")
//                                .font(.largeTitle)
//                                .foregroundColor(.cyan)
//                        })
//        }
//    }
//}
