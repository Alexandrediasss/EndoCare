//
//  SplashScreen.swift
//  EndoCare
//
//  Created by Academy on 27/04/26.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                
                Image("logoEndoCare")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                
                Text("Endocare")
                    .foregroundColor(Color.white)
                    .font(.system(size: 50))
                    .bold()
                
                Spacer()
                
                NavigationLink(destination: Login()) {
                    HStack{
                        Text("Entrar")
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .center)
                            .frame(height: 50)
                            .background(Color.white)
                            .foregroundColor(Color("primaryColor"))
                            .cornerRadius(100)
                    }
                }
                
                Button( action: {
                    print("Oi")
                }) {
                    HStack{
                        Text("Cadastro")
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .center)
                            .frame(height: 50)
                            .background(Color("primaryColor"))
                            .foregroundColor(Color.white)
                            .cornerRadius(100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color.white, lineWidth: 2)
                            )
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
        }.background(Color("primaryColor"))
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
