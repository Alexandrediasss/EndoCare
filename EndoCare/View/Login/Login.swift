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
    
    var body: some View {
        ZStack{
            VStack{
                Image("loginImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, alignment: .center)
                
                Spacer()
                
                VStack{
                    Text("Email")
                        .foregroundColor(Color("textFieldColor"))
                        .bold()
                    TextField("Digite o seu email", text: $email)
                }.padding()
                
                VStack{
                    Text("Email")
                        .foregroundColor(Color("textFieldColor"))
                        .bold()
                    TextField("Digite o seu email", text: $email)
                }.padding()
                
                Spacer()
                
                NavigationLink(destination: Login()) {
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
                }
            }
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .center
                )
                .padding(.horizontal)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
            .previewDevice("iPhone 13 Pro Max")
    }
}
