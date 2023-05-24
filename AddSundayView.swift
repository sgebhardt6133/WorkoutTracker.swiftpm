//
//  AddSundayView.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 03/03/1402 AP.
//

import SwiftUI

struct AddSundayView: View {
    @Binding var sundayList: [WorkoutInfo]
    @State var sundayExercise: String = ""
    @State var sundaySets: String = ""
    @State var sundayReps: String = ""
    @State var sundayWeight: Int?
    var body: some View {
        VStack{

            VStack {

                HStack {

                    VStack {


                        TextField("Enter Exercise", text: $sundayExercise)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()


                        TextField("Enter sets", text: $sundaySets)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()

                        TextField("Enter reps", text: $sundayReps)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()

                        TextField("Enter weight (in lbs)", value: $sundayWeight, format: .number)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                    }
                    Spacer()
                }

                Button("Add Exercise") {


                    //                guard let unwrappedSets = newSets else  { return }
                    //                guard let unwrappedReps = newReps else  { return }
                    guard let unwrappedSundayWeight = sundayWeight else  { return }

                    let newSundayWorkout = WorkoutInfo(exercise: sundayExercise, sets: sundaySets, reps: sundayReps, weight: unwrappedSundayWeight)
                    sundayList.append(newSundayWorkout)

//                    WorkoutManager().setWorkout(workoutList: workoutList)
                    WorkoutManager().setSunday(sundayList: sundayList)

                    sundayExercise = ""
                    sundaySets = ""
                    sundayReps = ""
                    sundayWeight = nil

                    if sundayExercise != "" && sundaySets != "" && sundayReps != "" && sundayWeight != nil {
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

                            sundayList = WorkoutManager().getSunday()

//                            test
                        })

                    List {

                        ForEach(sundayList, id: \.self){ currentWorkout in
                            SundayListView(currentWorkout: currentWorkout)
                        }
                        .onDelete { (indexSet) in
                            if let index = indexSet.first {
                                self.sundayList.remove(at: index)
                            }

                            WorkoutManager().setSunday(sundayList: sundayList)
                        }
                    }
                }
            }
        }

    func updateArray() {
        WorkoutManager().setSunday(sundayList: sundayList)
    }


    }
