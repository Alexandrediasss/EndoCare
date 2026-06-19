//
//  Forms.swift
//  EndoCare
//
//  Created by Academy on 14/05/26.
//

import SwiftUI

struct Forms: View {
    @State private var email : String = ""
    @State private var navigateToDiary: Bool = false
    
    @Binding var steps : String
    @Binding var isLogged : Bool
    
    let stepContent : StepContent
    
    var body: some View {
        VStack{
            Spacer()
            
            Image(stepContent.image)
                .resizable()
                .scaledToFit()
                .frame(width: 200, alignment: .center)
            
            Spacer()
            
            VStack{
                HStack{
                    Text(stepContent.label1)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("textFieldColor"))
                    
                    Spacer()
                }
                TextField(stepContent.text1, text: $email)
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height: 50)
                    .background(Color.white)
                    .foregroundColor(Color("textFieldColor"))
                    .cornerRadius(100)
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color("primaryColor"), lineWidth: 2)
                    )
            }
            
            VStack{
                HStack{
                    Text(stepContent.label2)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("textFieldColor"))
                    
                    Spacer()
                }
                TextField(stepContent.text2, text: $email)
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 50)
                    .background(Color.white)
                    .foregroundColor(Color("textFieldColor"))
                    .cornerRadius(100)
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color("primaryColor"), lineWidth: 2)
                    )
            }.frame(maxWidth: .infinity, alignment: .leading)
            
            VStack{
                HStack{
                    Text(stepContent.label3)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("textFieldColor"))
                    
                    Spacer()
                }
                TextField(stepContent.text3, text: $email)
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 50)
                    .background(Color.white)
                    .foregroundColor(Color("textFieldColor"))
                    .cornerRadius(100)
                    .overlay(
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color("primaryColor"), lineWidth: 2)
                    )
            }.frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            Button(action: {
                if steps == "step1" {
                    steps = "step2"
                } else if steps == "step2" {
                    steps = "step3"
                } else {
                    isLogged = true
                    navigateToDiary = true
                }
            }) {
                HStack {
                    Text("Próximo")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .frame(height: 50)
                        .background(Color("primaryColor"))
                        .foregroundColor(Color.white)
                        .cornerRadius(100)
                        .padding(.bottom)
                }
            }.background(NavigationLink(destination: DiaryScreen(), isActive: $navigateToDiary){
                EmptyView()
            }
            )
        }
        .padding(.horizontal, 24)
    }
}
