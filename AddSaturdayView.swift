//
//  AddSaturdayView.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 03/03/1402 AP.
//

import SwiftUI

struct AddSaturdayView: View {
    @Binding var saturdayList: [WorkoutInfo]
    @State var saturdayExercise: String = ""
    @State var saturdaySets: String = ""
    @State var saturdayReps: String = ""
    @State var saturdayWeight: Int?
    var body: some View {
        VStack{

            VStack {

                HStack {

                    VStack {


                        TextField("Enter Exercise", text: $saturdayExercise)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()


                        TextField("Enter sets", text: $saturdaySets)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()

                        TextField("Enter reps", text: $saturdayReps)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()

                        TextField("Enter weight (in lbs)", value: $saturdayWeight, format: .number)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                    }
                    Spacer()
                }

                Button("Add Exercise") {


                    //                guard let unwrappedSets = newSets else  { return }
                    //                guard let unwrappedReps = newReps else  { return }
                    guard let unwrappedSaturdayWeight = saturdayWeight else  { return }

                    let newSaturdayWorkout = WorkoutInfo(exercise: saturdayExercise, sets: saturdaySets, reps: saturdayReps, weight: unwrappedSaturdayWeight)
                    saturdayList.append(newSaturdayWorkout)

//                    WorkoutManager().setWorkout(workoutList: workoutList)
                    WorkoutManager().setSaturday(saturdayList: saturdayList)

                    saturdayExercise = ""
                    saturdaySets = ""
                    saturdayReps = ""
                    saturdayWeight = nil

                    if saturdayExercise != "" && saturdaySets != "" && saturdayReps != "" && saturdayWeight != nil {
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

                            saturdayList = WorkoutManager().getSaturday()

//                            test
                        })

                    List {

                        ForEach(saturdayList, id: \.self){ currentWorkout in
                            SaturdayListView(currentWorkout: currentWorkout)
                        }
                        .onDelete { (indexSet) in
                            if let index = indexSet.first {
                                self.saturdayList.remove(at: index)
                            }

                            WorkoutManager().setSaturday(saturdayList: saturdayList)
                        }
                    }
                }
            }
        }

    func updateArray() {
        WorkoutManager().setSaturday(saturdayList: saturdayList)
    }


    }


