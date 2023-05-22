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
                    }
                    Spacer()
                }

                Button("Add Exercise") {


                    //                guard let unwrappedSets = newSets else  { return }
                    //                guard let unwrappedReps = newReps else  { return }
                    guard let unwrappedFridayWeight = fridayWeight else  { return }

                    let newFridayWorkout = WorkoutInfo(exercise: fridayExercise, sets: fridaySets, reps: fridayReps, weight: unwrappedFridayWeight)
                    fridayList.append(newFridayWorkout)

//                    WorkoutManager().setWorkout(workoutList: workoutList)
                    WorkoutManager().setFriday(fridayList: fridayList)

                    fridayExercise = ""
                    fridaySets = ""
                    fridayReps = ""
                    fridayWeight = nil

                    if fridayExercise != "" && fridaySets != "" && fridayReps != "" && fridayWeight != nil {
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

