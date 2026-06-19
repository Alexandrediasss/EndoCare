//
//  CardCharacterComponent.swift
//  EndoCare
//
//  Created by Academy on 19/06/26.
//

import SwiftUI

struct CardCharacterComponent: View {
    var body: some View {
        HStack{
            Image("2dCharacter")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text("Olá, tudo bem? Eu sou o Mário e estou aqui para acompanhar você.")
                .bold()
        }
        .padding()
        .background(Color("primaryColor"))
        .cornerRadius(10)
        .padding(.horizontal, 20)
    }
}

struct CardCharacterComponent_Previews: PreviewProvider {
    static var previews: some View {
        CardCharacterComponent()
    }
}
