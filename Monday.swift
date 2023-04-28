//
//  Monday.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 06/02/1402 AP.
//

import SwiftUI

struct Monday: View {
    @State var newWorkout: String = ""
    @State var newSets: Int = 0
    @State var newReps: Int = 0
    @State var newWeight: Int = 0
    var body: some View {
        HStack{
            TextField("Lift/Exercise:", text: $newWorkout)
            TextField("Sets:", value: $newSets, formatter: NumberFormatter())
            TextField("Reps", value: $newReps, formatter: NumberFormatter())
            TextField("Weight:", value: $newWeight, formatter: NumberFormatter())
        }
    }
}

