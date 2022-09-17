//
//  PickGender.swift
//  AssignmentOne
//
//  Created by Kas Taghavi on 9/13/22.
//

import SwiftUI

struct PickGender: View {
    var genders = ["Male", "Female"]
    @State private var genderSelected = "Male"

    var body: some View {
        VStack{
            Picker("What is your gender:", selection: $genderSelected){
                ForEach(genders, id:\.self){
                    
                    Text($0)
                    
                }
            }.pickerStyle(WheelPickerStyle())
            Text("You Are \(genderSelected)").foregroundColor(Color.red)
        }
    }
}

struct PickGender_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PickGender()
                .previewInterfaceOrientation(.portrait)

        }
    }
}
