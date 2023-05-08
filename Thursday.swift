//
//  Thursday.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 06/02/1402 AP.
//

import SwiftUI
struct Thursday: View {
    @State var workoutList:[WorkoutInfo] = []
    @EnvironmentObject var items: ItemsClass

    var body: some View {
        VStack{
            AddWorkoutView(workoutList: $workoutList)

        }
    }
}
