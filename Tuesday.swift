//
//  Tuesday.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 06/02/1402 AP.
//

import SwiftUI
struct Tuesday: View {
    @State var tuesdayList:[WorkoutInfo] = []
  

    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .frame(width: 200, height: 200)
            AddTuesdayView(tuesdayList: $tuesdayList)

        }
    }
}
