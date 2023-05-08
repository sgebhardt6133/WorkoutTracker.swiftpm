//
//  WorkoutManager.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 18/02/1402 AP.
//

import SwiftUI

//struct WorkoutManager {
//    func getWorkout() -> [currentWorkout] {
//        if let object = UserDefaults.standard.value(forKey: "Workout") as? Data {
//            if let objectDecoded = try? JSONDecoder().decode(Array.self, from: object) as [currentWorkout] {
//                return objectDecoded
//            }
//        } else {
//            print("Decoding Failed")
//        }
//        return [currentWorkout]()
//    }
//
//    func setAssignments(assignments: [Assignment]) {
//        if let encoded = try? JSONEncoder().encode(assignments){
//            UserDefaults.standard.set(encoded, forKey: "assignments")
//        } else {
//            print("Encoding Failed")
//        }
//
//    }
//}
