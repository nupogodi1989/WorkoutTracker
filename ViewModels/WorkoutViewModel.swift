//
//  WorkoutViewModel.swift
//  WorkoutTracker
//
//  Created by b on 4/13/25.
//

import Foundation

class WorkoutViewModel: ObservableObject {
    @Published var workouts: [Workout] = []
    
    func addWorkout(type: String, duration: Int, date: Date) {
        let newWorkout = Workout(type: type, duration: duration, date: date)
        workouts.append(newWorkout)
        // Persistence will be added later
    }

    func deleteWorkout(at offsets: IndexSet) {
        workouts.remove(atOffsets: offsets)
    }
}
