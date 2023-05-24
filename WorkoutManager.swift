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
    
    /////
    func getWednesday() -> [WorkoutInfo] {
        if let object3 = UserDefaults.standard.value(forKey: "wednesdayInfo") as? Data {
            if let object3Decoded = try? JSONDecoder().decode(Array.self, from: object3) as [WorkoutInfo] {
                return object3Decoded
                
            }
        } else {
            print("Decoding Failed")
        }
        return  [WorkoutInfo]()
    }
    
    func setWednesday(wednesdayList: [WorkoutInfo]) {
        if let encoded3 = try? JSONEncoder().encode(wednesdayList){
            UserDefaults.standard.set(encoded3, forKey: "wednesdayInfo")
        } else {
            print("Encoding Failed")
        }
    }
    
    
    //////
    
    func getThursday() -> [WorkoutInfo] {
        if let object4 = UserDefaults.standard.value(forKey: "thursdayInfo") as? Data {
            if let object4Decoded = try? JSONDecoder().decode(Array.self, from: object4) as [WorkoutInfo] {
                return object4Decoded
                
            }
        } else {
            print("Decoding Failed")
        }
        return  [WorkoutInfo]()
    }
    
    func setThursday(thursdayList: [WorkoutInfo]) {
        if let encoded4 = try? JSONEncoder().encode(thursdayList){
            UserDefaults.standard.set(encoded4, forKey: "thursdayInfo")
        } else {
            print("Encoding Failed")
        }
    }
    
    /////
    func getFriday() -> [WorkoutInfo] {
    if let object5 = UserDefaults.standard.value(forKey: "fridayInfo") as? Data {
        if let object5Decoded = try? JSONDecoder().decode(Array.self, from: object5) as [WorkoutInfo] {
            return object5Decoded
            
        }
    } else {
        print("Decoding Failed")
    }
    return  [WorkoutInfo]()
}

func setFriday(fridayList: [WorkoutInfo]) {
    if let encoded5 = try? JSONEncoder().encode(fridayList){
        UserDefaults.standard.set(encoded5, forKey: "fridayInfo")
    } else {
        print("Encoding Failed")
    }
}
    
    
    ////
    func getSaturday() -> [WorkoutInfo] {
        if let object6 = UserDefaults.standard.value(forKey: "saturdayInfo") as? Data {
            if let object6Decoded = try? JSONDecoder().decode(Array.self, from: object6) as [WorkoutInfo] {
                return object6Decoded
                
            }
        } else {
            print("Decoding Failed")
        }
        return  [WorkoutInfo]()
    }
    
    func setSaturday(saturdayList: [WorkoutInfo]) {
        if let encoded6 = try? JSONEncoder().encode(saturdayList){
            UserDefaults.standard.set(encoded6, forKey: "saturdayInfo")
        } else {
            print("Encoding Failed")
        }
    }
    func getSunday() -> [WorkoutInfo] {
        if let object7 = UserDefaults.standard.value(forKey: "sundayInfo") as? Data {
            if let object7Decoded = try? JSONDecoder().decode(Array.self, from: object7) as [WorkoutInfo] {
                return object7Decoded
                
            }
        } else {
            print("Decoding Failed")
        }
        return  [WorkoutInfo]()
    }
    
    func setSunday(sundayList: [WorkoutInfo]) {
        if let encoded7 = try? JSONEncoder().encode(sundayList){
            UserDefaults.standard.set(encoded7, forKey: "sundayInfo")
        } else {
            print("Encoding Failed")
        }
    }
}

