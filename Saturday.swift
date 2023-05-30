//
//  Saturday.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 06/02/1402 AP.
//

import SwiftUI

struct Saturday: View {
    @State var saturdayList:[WorkoutInfo] = []
   

    var body: some View {
        
        VStack{
            Image("logo")
                .resizable()
                .frame(width: 200, height: 200)
            AddSaturdayView(saturdayList: $saturdayList)

        }
    }
}

