//
//  WorkoutManager.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 18/02/1402 AP.
//

import SwiftUI

struct WorkoutManager {
    
    func getWorkout() -> [WorkoutInfo] {
        if let object = UserDefaults.standard.value(forKey: "workoutInfo") as? Data {
            if let objectDecoded = try? JSONDecoder().decode(Array.self, from: object) as [WorkoutInfo] {
                return objectDecoded
            }
        } else {
            print("Decoding Failed")
        }
        return  [WorkoutInfo]()
    }
    
    func setWorkout(workoutList: [WorkoutInfo]) {
        if let encoded = try? JSONEncoder().encode(workoutList){
            UserDefaults.standard.set(encoded, forKey: "workoutInfo")
        } else {
            print("Encoding Failed")
        }
    }
}
