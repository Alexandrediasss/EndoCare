//
//  Forms.swift
//  EndoCare
//
//  Created by Academy on 14/05/26.
//

import SwiftUI

struct Forms: View {
    @State private var email : String = ""
    @Binding var steps : String
    
    let stepContent : StepContent
    
    var body: some View {
        VStack{
            Spacer()
            
            Image("loginImage")
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
                        steps = "step1"
                    }
            }) {
                HStack {
                    Text("Próximo)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                        .frame(height: 50)
                        .background(Color("primaryColor"))
                        .foregroundColor(Color.white)
                        .cornerRadius(100)
                        .padding(.bottom)
                }
            }
        }
        .padding(.horizontal, 24)
    }
}

struct Forms_Previews: PreviewProvider {
    static var previews: some View {
        Forms(steps: .constant("step1"), stepContent: StepContent(
            label1: "Email",
            label2: "Senha",
            label3: "Confirmar Senha",
            text1: "Digite o seu email",
            text2: "Digite a sua senha",
            text3: "Confirme a sua senha"
        ))
    }
}
