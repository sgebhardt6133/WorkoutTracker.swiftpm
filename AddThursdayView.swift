//
//  AddThursdayView.swift
//  WorkoutTracker
//
//  Created by Jak Flaherty on 5/22/23.
//

import SwiftUI

struct AddThursdayView: View {
    @Binding var thursdayList: [WorkoutInfo]
    @State var thursdayExercise: String = ""
    @State var thursdaySets: String  = ""
    @State var thursdayReps: String = ""
    @State var thursdayWeight: Int?
    
    
    var body: some View {
        
        VStack{
            
            VStack {
                
                HStack {
                    
                    VStack {
                        
                        
                        TextField("Enter Exercise", text: $thursdayExercise)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        
                        TextField("Enter sets", text: $thursdaySets)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        TextField("Enter reps", text: $thursdayReps)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        TextField("Enter weight (in lbs)", value: $thursdayWeight, format: .number)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                    }
                    Spacer()
                }
                
                Button("Add Exercise") {
                    
                    
                    //                guard let unwrappedSets = newSets else  { return }
                    //                guard let unwrappedReps = newReps else  { return }
                    guard let unwrappedThursdayWeight = thursdayWeight else  { return }
                    
                    let newThursdayWorkout = WorkoutInfo(exercise: thursdayExercise, sets: thursdaySets, reps: thursdayReps, weight: unwrappedThursdayWeight)
                    thursdayList.append(newThursdayWorkout)
                    
                    //                    WorkoutManager().setWorkout(workoutList: workoutList)
                    WorkoutManager().setThursday(thursdayList:thursdayList)
                    
                    thursdayExercise = ""
                    thursdaySets = ""
                    thursdayReps = ""
                    thursdayWeight = nil
                    
                    if thursdayExercise != "" && thursdaySets != "" && thursdayReps != "" && thursdayWeight != nil {
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
                    
                    thursdayList = WorkoutManager().getThursday()
                    
                })
                
                List {
                    
                    ForEach(thursdayList, id: \.self){ currentWorkout in
                        ThursdayListView(currentWorkout: currentWorkout)
                    }
                    .onDelete { (indexSet) in
                        if let index = indexSet.first {
                            self.thursdayList.remove(at: index)
                        }
                        
                        WorkoutManager().setThursday(thursdayList: thursdayList) ////fix later
                    }
                    
                }
            }
        }
    }
    
    func updateArray() {
        WorkoutManager().setThursday(thursdayList: thursdayList)
    }
    
}






///////commit
///commit


