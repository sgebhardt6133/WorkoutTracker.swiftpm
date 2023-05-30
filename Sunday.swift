//
//  Sunday.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 06/02/1402 AP.
//
import SwiftUI

struct Sunday: View {
    @State var sundayList:[WorkoutInfo] = []
  

    var body: some View {
        VStack{
            AddSundayView(sundayList: $sundayList)
            
        }
    }
}
