//
//  LoginTeenager.swift
//  EndoCare
//
//  Created by Academy on 27/04/26.
//

import SwiftUI

struct Login: View {
    @State private var email : String = ""
    @State private var password : String = ""
    @State private var navigateToDiary : Bool = false
    
    @Binding var isLogged : Bool
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                
                Image("loginImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, alignment: .center)
                
                Spacer()
                
                VStack{
                    HStack{
                        Text("Email")
                            .bold()
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("textFieldColor"))
                        
                        Spacer()
                    }
                    TextField("Digite o seu email", text: $email)
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
                        Text("Senha")
                            .bold()
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("textFieldColor"))
                        
                        Spacer()
                    }
                    TextField("Digite a sua senha", text: $password)
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
                
                Button(
                    action: {
                        isLogged = true
                        navigateToDiary = true
                    }
                ){
                    HStack{
                        Text("Entrar")
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
                })
            }
            .padding(.horizontal, 24)
        }
    }
}
