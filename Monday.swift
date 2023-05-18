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
        AddMondayView(mondayList: $mondayList)
        
//        Image("Legs")
    }
    
   
}






