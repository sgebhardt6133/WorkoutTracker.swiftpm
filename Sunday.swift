//
//  Sunday.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 06/02/1402 AP.
//
import SwiftUI

struct Sunday: View {
    @State var workoutList:[WorkoutInfo] = []
    @EnvironmentObject var items: ItemsClass

    var body: some View {
        VStack{
            AddWorkoutView(workoutList: $workoutList)

        }
    }
}
