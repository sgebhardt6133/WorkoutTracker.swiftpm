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
            
            AddTuesdayView(tuesdayList: $tuesdayList)

        }
    }
}
