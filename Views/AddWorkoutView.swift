//
//  AddWorkoutView.swift
//  WorkoutTracker
//
//  Created by b on 4/13/25.
//

import SwiftUI

struct AddWorkoutView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: WorkoutViewModel

    @State private var type = ""
    @State private var duration = ""
    @State private var date = Date()

    var body: some View {
        Form {
            TextField("Workout Type", text: $type)
            TextField("Duration (minutes)", text: $duration)
                .keyboardType(.numberPad)
            DatePicker("Date", selection: $date, displayedComponents: .date)

            Button("Save") {
                if let durationInt = Int(duration) {
                    viewModel.addWorkout(type: type, duration: durationInt, date: date)
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
        .navigationTitle("Add Workout")
    }
}
