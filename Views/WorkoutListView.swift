//
//  WorkoutListView.swift
//  WorkoutTracker
//
//  Created by b on 4/13/25.
//

import SwiftUI

struct WorkoutListView: View {
    @StateObject private var viewModel = WorkoutViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.workouts) { workout in
                    VStack(alignment: .leading) {
                        Text(workout.type)
                            .font(.headline)
                        Text("Duration: \(workout.duration) mins")
                        Text(workout.date, style: .date)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .onDelete(perform: viewModel.deleteWorkout)
            }
            .navigationTitle("Workouts")
            .toolbar {
                NavigationLink("Add", destination: AddWorkoutView(viewModel: viewModel))
            }
        }
    }
}
