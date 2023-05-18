//
//  WorkoutManager.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 18/02/1402 AP.
//

import SwiftUI

struct WorkoutManager {
    

    
    //////
    
    func getMonday() -> [WorkoutInfo] {
        if let object1 = UserDefaults.standard.value(forKey: "mondayInfo") as? Data {
            if let object1Decoded = try? JSONDecoder().decode(Array.self, from: object1) as [WorkoutInfo] {
                return object1Decoded
            }
        } else {
            print("Decoding Failed")
        }
        return  [WorkoutInfo]()
    }
    
    func setMonday(mondayList: [WorkoutInfo]) {
        if let encoded1 = try? JSONEncoder().encode(mondayList){
            UserDefaults.standard.set(encoded1, forKey: "mondayInfo")
        } else {
            print("Encoding Failed")
        }
    }
    
    ////
    
    func getTuesday() -> [WorkoutInfo] {
        if let object2 = UserDefaults.standard.value(forKey: "tuesdayInfo") as? Data {
            if let object2Decoded = try? JSONDecoder().decode(Array.self, from: object2) as [WorkoutInfo] {
                return object2Decoded
            }
        } else {
            print("Decoding Failed")
        }
        return  [WorkoutInfo]()
    }
    
    func setTuesday(tuesdayList: [WorkoutInfo]) {
        if let encoded2 = try? JSONEncoder().encode(tuesdayList){
            UserDefaults.standard.set(encoded2, forKey: "tuesdayInfo")
        } else {
            print("Encoding Failed")
        }
    }
}
