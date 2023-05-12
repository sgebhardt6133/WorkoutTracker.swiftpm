//
//  Struct.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 04/02/1402 AP.
//

import SwiftUI

//struct Exercise: Hashable, Codable {
//
//
//
//    var Workout:String
//    var Sets:Int
//    var Reps:Int
//    var Weight:Int
//}
//class ItemsClass: ObservableObject{
//    @Published var ExerciseArray: [Exercise] = []
//    @State var itemsKey: String = "items_key"
//
//       init() {
//           retrieve()
//       }
//
//    func save(){
//            if let encodeddata = try?
//                JSONEncoder().encode(ExerciseArray){
//                UserDefaults.standard.set(encodeddata, forKey: itemsKey)
//
//            }
//        }
//
//    func retrieve(){
//            guard
//                let data = UserDefaults.standard.data(forKey: itemsKey),
//                let saveditems = try? JSONDecoder().decode([Exercise].self, from: data)
//            else{return}
//            self.ExerciseArray = saveditems
//        }
//}
//
