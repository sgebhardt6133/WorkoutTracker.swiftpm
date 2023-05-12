//
//  WorkoutInfo.swift
//  WorkoutTracker
//
//  Created by Jak Flaherty on 5/2/23.
//

import SwiftUI

struct WorkoutInfo: Hashable, Codable {
    
    var exercise:  String
    var sets: String
    var reps: String
    var weight: Int
}


