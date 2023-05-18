//
//  Wednesday.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 06/02/1402 AP.
//

import SwiftUI


struct Wednesday: View {
    @State var wednesdayList:[WorkoutInfo] = []
  

    var body: some View {
        VStack{
            
            AddWednesdayView(wednesdayList: $wednesdayList)
        }
    }
}


