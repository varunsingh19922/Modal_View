//
//  StepperView.swift
//  AssignmentOne
//
//  Created by Muhammad Ashraf on 9/12/22.
//

import SwiftUI

struct StepperView: View {
    
    @State private var value = 0
    
    let step = 5;
    let range = 1...50
    
    var body: some View {
        Stepper(value: $value,
                in: range,
                step: step){
            Text("Current:  \(value) in \(range.description) " + "stepping by \(step)")
        }
                .padding(10)
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
