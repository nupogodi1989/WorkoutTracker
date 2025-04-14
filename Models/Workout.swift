//
//  Workout.swift
//  WorkoutTracker
//
//  Created by b on 4/13/25.
//

import Foundation

struct Workout: Identifiable, Codable {
    var id = UUID()
    var type: String
    var duration: Int // in minutes
    var date: Date
}
