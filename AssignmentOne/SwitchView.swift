//
//  SwitchView.swift
//  AssignmentOne
//
//  Created by Muhammad Ashraf on 9/12/22.
//

import SwiftUI

struct SwitchView: View {
    
@State private var isToggle : Bool = false
    
   var body: some View {
       
   VStack {
       
      Toggle(isOn: $isToggle){
          
         Text("Yay a Switch")
          
            .font(.title)
          
            .foregroundColor(Color.white)
      }
    }.padding()
       
     .background(isToggle ? Color.orange : Color.purple)
       
  }
}

struct SwitchView_Previews: PreviewProvider {
    
   static var previews: some View {
       
      SwitchView()
   }
}
