//
//  AddWednesdayView.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 01/03/1402 AP.
//

import SwiftUI

struct AddWednesdayView: View {
    @Binding var wednesdayList: [WorkoutInfo]
    @State var wednesdayExercise: String = ""
    @State var wednesdaySets: String = ""
    @State var wednesdayReps: String = ""
    @State var wednesdayWeight: Int?
    var body: some View {
        VStack{
            
            VStack {
                
                HStack {
                    
                    VStack {
                        
                        
                        TextField("Enter Exercise", text: $wednesdayExercise)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        
                        TextField("Enter sets", text: $wednesdaySets)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        TextField("Enter reps", text: $wednesdayReps)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        TextField("Enter weight (in lbs)", value: $wednesdayWeight, format: .number)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                    }
                    Spacer()
                }
                
                Button("Add Exercise") {
                    
                    
                    //                guard let unwrappedSets = newSets else  { return }
                    //                guard let unwrappedReps = newReps else  { return }
                    guard let unwrappedWednesdayWeight = wednesdayWeight else  { return }
                    
                    let newWednesdayWorkout = WorkoutInfo(exercise: wednesdayExercise, sets: wednesdaySets, reps: wednesdayReps, weight: unwrappedWednesdayWeight)
                    wednesdayList.append(newWednesdayWorkout)
                    
//                    WorkoutManager().setWorkout(workoutList: workoutList)
                    WorkoutManager().setWednesday(wednesdayList: wednesdayList)
                    
                    wednesdayExercise = ""
                    wednesdaySets = ""
                    wednesdayReps = ""
                    wednesdayWeight = nil
                    
                    if wednesdayExercise != "" && wednesdaySets != "" && wednesdayReps != "" && wednesdayWeight != nil {
                        updateArray()
                        
                    }
                }
                .foregroundColor(.white)
                .padding()
                .frame(width: 200, height: 50)
                .background(LinearGradient(
                    gradient: Gradient(
                        colors: [Color.cyan, Color.blue]),
                    startPoint: .leading,
                    endPoint: .trailing))
                .cornerRadius(25)
                .shadow(radius: 10)
                

                        .onAppear(perform: {
//                            workoutList = WorkoutManager().getWorkout()
                            
                            wednesdayList = WorkoutManager().getWednesday()
                            
                        })
                        
                    List {
                        
                        ForEach(wednesdayList, id: \.self){ currentWorkout in
                            WednesdayListView(currentWorkout: currentWorkout)
                        }
                        .onDelete { (indexSet) in
                            if let index = indexSet.first {
                                self.wednesdayList.remove(at: index)
                            }
                          
                            WorkoutManager().setWednesday(wednesdayList: wednesdayList)
                        }
                        
                    }
                }
            }
        }
    
    func updateArray() {
        WorkoutManager().setWednesday(wednesdayList: wednesdayList)
    }
    
    
    }

