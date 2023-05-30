//
//  Monday.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 06/02/1402 AP.
//

import SwiftUI

struct Monday: View {
    

    @State var mondayList:[WorkoutInfo] = []
    
 

    
    var body: some View {
        Image("logo")
            .resizable()
            .frame(width: 200, height: 200)
        AddMondayView(mondayList: $mondayList)
        
    }
    
   
}






