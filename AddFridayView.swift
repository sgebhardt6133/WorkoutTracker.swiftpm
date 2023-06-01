//
//  AddWednesdayView.swift
//  WorkoutTracker
//
//  Created by sam gebhardt on 01/03/1402 AP.
//
//
import SwiftUI

struct AddFridayView: View {
    @Binding var fridayList: [WorkoutInfo]
    @State var fridayExercise: String = ""
    @State var fridaySets: String = ""
    @State var fridayReps: String = ""
    @State var fridayWeight: Int?
    @State var fridayMonth: Int?
    @State var fridayDay: Int?
    @State var fridayYear: Int?
    var body: some View {
        VStack{

            VStack {

                HStack {

                    VStack {


                        TextField("Enter Exercise", text: $fridayExercise)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()


                        TextField("Enter sets", text: $fridaySets)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()

                        TextField("Enter reps", text: $fridayReps)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()

                        TextField("Enter weight (in lbs)", value: $fridayWeight, format: .number)
                            .frame(width: 300, height: 20)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        HStack{
                            TextField("01", value: $fridayMonth, format: .number)
                                .frame(width: 50, height: 20)
                                .textFieldStyle(.roundedBorder)
                                .padding(
                                )
                            TextField("01", value: $fridayDay, format: .number)
                                .frame(width: 50, height: 20)
                                .textFieldStyle(.roundedBorder)
                                .padding()
                            
                            TextField("23", value: $fridayYear, format: .number)
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
                    guard let unwrappedFridayWeight = fridayWeight else  { return }
                    guard let unwrappedFridayDay = fridayDay else  { return }
                    guard let unwrappedFridayMonth = fridayMonth else  { return }
                    guard let unwrappedFridayYear = fridayYear else  { return }




                    let newFridayWorkout = WorkoutInfo(exercise: fridayExercise, sets: fridaySets, reps: fridayReps, weight: unwrappedFridayWeight, month: unwrappedFridayMonth, day: unwrappedFridayDay, year: unwrappedFridayYear)
                    fridayList.append(newFridayWorkout)

//                    WorkoutManager().setWorkout(workoutList: workoutList)
                    WorkoutManager().setFriday(fridayList: fridayList)

                    fridayExercise = ""
                    fridaySets = ""
                    fridayReps = ""
                    fridayWeight = nil
                    fridayMonth = nil
                    fridayDay = nil
                    fridayYear = nil

                    if fridayExercise != "" && fridaySets != "" && fridayReps != "" && fridayWeight != nil && fridayMonth != nil && fridayDay !=   nil && fridayYear != nil{
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

                            fridayList = WorkoutManager().getFriday()

//                            test
                        })

                    List {

                        ForEach(fridayList, id: \.self){ currentWorkout in
                            FridayListView(currentWorkout: currentWorkout)
                        }
                        .onDelete { (indexSet) in
                            if let index = indexSet.first {
                                self.fridayList.remove(at: index)
                            }

                            WorkoutManager().setFriday(fridayList: fridayList)
                        }

                    }
                }
            }
        }

    func updateArray() {
        WorkoutManager().setFriday(fridayList: fridayList)
    }

        
    }

