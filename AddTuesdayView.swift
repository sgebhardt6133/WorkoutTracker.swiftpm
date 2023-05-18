//
//  AddWorkoutView.swift
//  WorkoutTracker
//
//  Created by Jak Flaherty on 5/2/23.
//

import SwiftUI

struct AddTuesdayView: View {
    @Binding var tuesdayList: [WorkoutInfo] 
    @State var tuesdayExercise: String = ""
    @State var tuesdaySets: String  = ""
    @State var tuesdayReps: String = ""
    @State var tuesdayWeight: Int?
    
    
    var body: some View {
        
        VStack{
            
            VStack {
                
                HStack {
                    
                    VStack {
                        
                        
                        TextField("Enter Exercise", text: $tuesdayExercise)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        
                        TextField("Enter sets", text: $tuesdaySets)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        TextField("Enter reps", text: $tuesdayReps)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        TextField("Enter weight (in lbs)", value: $tuesdayWeight, format: .number)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                    }
                    Spacer()
                }
                
                Button("Add Exercise") {
                    
                    
                    //                guard let unwrappedSets = newSets else  { return }
                    //                guard let unwrappedReps = newReps else  { return }
                    guard let unwrappedTuesdayWeight = tuesdayWeight else  { return }
                    
                    let newTuesdayWorkout = WorkoutInfo(exercise: tuesdayExercise, sets: tuesdaySets, reps: tuesdayReps, weight: unwrappedTuesdayWeight)
                    tuesdayList.append(newTuesdayWorkout)
                    
                    //                    WorkoutManager().setWorkout(workoutList: workoutList)
                    WorkoutManager().setTuesday(tuesdayList: tuesdayList)
                    
                    tuesdayExercise = ""
                    tuesdaySets = ""
                    tuesdayReps = ""
                    tuesdayWeight = nil
                    
                    if tuesdayExercise != "" && tuesdaySets != "" && tuesdayReps != "" && tuesdayWeight != nil {
                        updateArray()
                        
                    }
                }
                .onAppear(perform: {
                    //                            workoutList = WorkoutManager().getWorkout()
                    
//                    mondayList = WorkoutManager().getMonday()
                    
                    tuesdayList = WorkoutManager().getTuesday()
                    
                })
                
                List {
                    
                    ForEach(tuesdayList, id: \.self){ currentWorkout in
                        TuesdayListView(currentWorkout: currentWorkout)
                    }
                    .onDelete { (indexSet) in
                        if let index = indexSet.first {
                            self.tuesdayList.remove(at: index)
                        }
                        
                        WorkoutManager().setTuesday(tuesdayList: tuesdayList)
                    }
                    
                }
            }
        }
    }
    
    func updateArray() {
        WorkoutManager().setTuesday(tuesdayList: tuesdayList)
    }
    
}






