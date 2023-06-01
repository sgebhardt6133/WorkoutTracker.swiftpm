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
    @State var tuesdayMonth: Int?
    @State var tuesdayDay: Int?
    @State var tuesdayYear: Int?
    
    
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
                        HStack{
                            TextField("01", value: $tuesdayMonth, format: .number)
                                .frame(width: 50, height: 20)
                                .textFieldStyle(.roundedBorder)
                                .padding(
                                )
                            TextField("01", value: $tuesdayDay, format: .number)
                                .frame(width: 50, height: 20)
                                .textFieldStyle(.roundedBorder)
                                .padding()
                            
                            TextField("23", value: $tuesdayYear, format: .number)
                                .frame(width: 50, height: 20)
                                .textFieldStyle(.roundedBorder)
                                .padding()
                        }
                    }
                    Spacer()
                }
                
                Button("Add Exercise") {
                    
                    
                    //                guard let unwrappedSets = newSets else  { return }
                    //                guard let unwrappedReps = newReps else  { return }
                    guard let unwrappedTuesdayWeight = tuesdayWeight else  { return }
                    guard let unwrappedTuesdayDay = tuesdayDay else  { return }
                    guard let unwrappedTuesdayMonth = tuesdayMonth else  { return }
                    guard let unwrappedTuesdayYear = tuesdayYear else  { return }
                    
                    let newTuesdayWorkout = WorkoutInfo(exercise: tuesdayExercise, sets: tuesdaySets, reps: tuesdayReps, weight: unwrappedTuesdayWeight, month: unwrappedTuesdayMonth, day: unwrappedTuesdayDay, year: unwrappedTuesdayYear)
                    tuesdayList.append(newTuesdayWorkout)
                    
                    //                    WorkoutManager().setWorkout(workoutList: workoutList)
                    WorkoutManager().setTuesday(tuesdayList: tuesdayList)
                    
                    tuesdayExercise = ""
                    tuesdaySets = ""
                    tuesdayReps = ""
                    tuesdayWeight = nil
                    tuesdayMonth = nil
                    tuesdayDay = nil
                    tuesdayYear = nil

                    
                    if tuesdayExercise != "" && tuesdaySets != "" && tuesdayReps != "" && tuesdayWeight != nil {
                        updateArray()
                        
                    }
                }
                .foregroundColor(.white)
                .padding()
                .frame(width: 200, height: 50)
                .background(LinearGradient(
                    gradient: Gradient(
                        colors: [Color.blue, Color.cyan]),
                    startPoint: .leading,
                    endPoint: .trailing))
                .cornerRadius(25)
                .shadow(radius: 10)
                
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






