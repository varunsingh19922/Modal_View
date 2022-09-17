//
//  SelectButton.swift
//  AssignmentOne
//
//  Created by Muhammad Ashraf on 9/8/22.
//

import SwiftUI

struct SelectButton: View {
    @Binding var isSelected: Bool
    @State var color: Color
    @State var text: String
    
    var body: some View {
        ZStack{
            Capsule()
                .frame(height: 50)
                .foregroundColor(isSelected ? color: .gray)
            Text(text)
                .foregroundColor(.white)
        }
    }
}

struct SelectButton_Previews: PreviewProvider {
    static var previews: some View {
        SelectButton(isSelected: .constant(false), color: .pink, text: "Bitches")
    }
}
