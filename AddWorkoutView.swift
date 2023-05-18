//
//  AddWorkoutView.swift
//  WorkoutTracker
//
//  Created by Jak Flaherty on 5/2/23.
//

import SwiftUI

struct AddMondayView: View {
    @Binding var mondayList: [WorkoutInfo] 
//    @Binding var tuesdayList: [WorkoutInfo] 
//    @Binding var wednesdayList: [WorkoutInfo] 
//    @Binding var thursdayList: [WorkoutInfo]
//    @Binding var fridayList: [WorkoutInfo] 
//    @Binding var saturdayList: [WorkoutInfo] 
//    @Binding var sundayList: [WorkoutInfo] 
                                
                                
//    @Binding var workoutList:[WorkoutInfo]
    @State var newExercise: String = ""
    @State var newSets: String  = ""
    @State var newReps: String = ""
    @State var newWeight: Int?
    
    
    var body: some View {
        
        VStack{
            
            VStack {
                
                HStack {
                    
                    VStack {
                        
                        
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
                    mondayList.append(newWorkout)
                    
//                    WorkoutManager().setWorkout(workoutList: workoutList)
                    WorkoutManager().setMonday(mondayList: mondayList)
                    
                    newExercise = ""
                    newSets = ""
                    newReps = ""
                    newWeight = nil
                    
                    if newExercise != "" && newSets != "" && newReps != "" && newWeight != nil {
                        updateArray()
                        
                    }
                }
                        .onAppear(perform: {
//                            workoutList = WorkoutManager().getWorkout()
                            
                            mondayList = WorkoutManager().getMonday()
                            
                        })
                        
                    List {
                        
                        ForEach(mondayList, id: \.self){ currentWorkout in
                            MondayListView(currentWorkout: currentWorkout)
                        }
                        .onDelete { (indexSet) in
                            if let index = indexSet.first {
                                self.mondayList.remove(at: index)
                            }
                          
                            WorkoutManager().setMonday(mondayList: mondayList)
                        }
                        
                    }
                }
            }
        }
    
    func updateArray() {
        WorkoutManager().setMonday(mondayList: mondayList)
    }
    
    }
 





