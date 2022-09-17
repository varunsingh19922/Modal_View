//
//  ContentView.swift
//  AssignmentOne
//
//  Created by Muhammad Ashraf on 9/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSelected = false
    @State private var isSelected2 = false
    @State private var showAlert = false
    @State private var alertText = ""
    
    var body: some View {
        
        VStack(spacing: 30){
            Text("Do you want to match?")
            HStack{
                SelectButton(
                    isSelected: $isSelected,
                    color: .blue,
                    text: "Yes")
                .onTapGesture {
                    isSelected.toggle()
                    
                    if isSelected{
                        isSelected2 = false
                    }
                }
                SelectButton(
                    isSelected: $isSelected2,
                    color: .red,
                    text: "No")
                .onTapGesture {
                    isSelected2.toggle()
                    
                    if isSelected2{
                        
                        isSelected = false
                    }
                }
            }
            Button("Submit"){
                alertText = isSelected ? "yay, love!" : "damn."
                showAlert.toggle()
            }.alert(alertText, isPresented: $showAlert){
                Button("Continue"){
                    
                }
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
