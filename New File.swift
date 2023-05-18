import SwiftUI

struct TuesdayListView: View {
    
     let currentWorkout:WorkoutInfo
    
    var body: some View {
        VStack{
            Text(currentWorkout.exercise)
                .fontWeight(.bold)
            Text("Sets: \(currentWorkout.sets)")
            Text("Reps: \(currentWorkout.reps)")
            Text("Weight: \(currentWorkout.weight)lbs")
            
        }
    }
}


