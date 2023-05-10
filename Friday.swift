//
//  Friday.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 06/02/1402 AP.
//

import SwiftUI

struct Friday: View {
    @State var workoutList:[WorkoutInfo] = []
    var body: some View {
        VStack{
            AddWorkoutView(workoutList: $workoutList)
            Image("Weird")
//                .onDelete { (indexSet) in
//                    if let index = indexSet.first {
//                        self.workoutList.remove(at: index)
//                    }
//                }

        }
        
    }
}

