//
//  Friday.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 06/02/1402 AP.
//

import SwiftUI

struct Friday: View {
    @State var fridayList:[WorkoutInfo] = []
    var body: some View {
        VStack{
            AddFridayView(fridayList: $fridayList)

        }
    }
}

