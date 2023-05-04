//
//  Monday.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 06/02/1402 AP.
//

import SwiftUI

struct Monday: View {
    
    @State var workoutList:[WorkoutInfo] = []
    
    var body: some View {
        AddWorkoutView(workoutList: $workoutList)

    }
    
   
}






