//
//  AddWorkoutView.swift
//  WorkoutTracker
//
//  Created by Jak Flaherty on 5/2/23.
//

import SwiftUI

struct AddWorkoutView: View {
    
    @Binding var workoutList:[WorkoutInfo]
    @State var newExercise: String = ""
    @State var newSets: String  = ""
    @State var newReps: String = ""
    @State var newWeight: Int?
    
    
    var body: some View {
        
        VStack{
            
            VStack {
                
                HStack {
                    
                    VStack{
                        
                        
                        TextField("Enter Exercise", text: $newExercise)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        
                        TextField("Enter sets", text: $newSets)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        TextField("Enter reps", text: $newReps)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        TextField("Enter weight (in lbs)", value: $newWeight, format: .number)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                    }
                    Spacer()
                }
                
                Button("Add Exercise") {
                    
                    
                    //                guard let unwrappedSets = newSets else  { return }
                    //                guard let unwrappedReps = newReps else  { return }
                    guard let unwrappedWeight = newWeight else  { return }
                    
                    let newWorkout = WorkoutInfo(exercise: newExercise, sets: newSets, reps: newReps, weight: unwrappedWeight)
                    workoutList.append(newWorkout)
                    
                    WorkoutManager().setWorkout(workoutList: workoutList)
                    
                    newExercise = ""
                    newSets = ""
                    newReps = ""
                    newWeight = nil
                    
                    if newExercise != "" && newSets != "" && newReps != "" && newWeight != nil {
                        updateArray()
                        
                    }
                }
                        .onAppear(perform: {
                            workoutList = WorkoutManager().getWorkout()
                        })
                        
                    List() {
                        
                        ForEach(workoutList, id: \.self){ currentWorkout in
                            WorkoutListView(currentWorkout: currentWorkout)
                        }
                        .onDelete { (indexSet) in
                            if let index = indexSet.first {
                                self.workoutList.remove(at: index)
                            }
                            WorkoutManager()
                                .setWorkout(workoutList: workoutList)
                        }
                        
                    }
                }
            }
        }
    
    func updateArray() {
        WorkoutManager().setWorkout(workoutList: workoutList)
    }
    
    }
 





