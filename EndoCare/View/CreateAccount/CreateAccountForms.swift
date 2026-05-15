//
//  CreateAccountForms.swift
//  EndoCare
//
//  Created by Academy on 14/05/26.
//

import SwiftUI

struct StepContent {
    let image: String
    let label1: String
    let label2: String
    let label3: String
    let text1: String
    let text2: String
    let text3: String
}

struct CreateAccountForms: View {
    @State private var steps : String = "step1"
    
    let step1Content = StepContent(
        image: "step1Image",
        label1: "Primeiro Nome",
        label2: "Segundo Nome",
        label3: "Data de Nascimento",
        text1: "Digite o seu primeiro nome",
        text2: "Digite o seu segundo nome",
        text3: "Digite a sua data de nasimento"
    )
    
    let step2Content = StepContent(
        image: "step2Image",
        label1: "Gênero",
        label2: "Peso",
        label3: "Altura",
        text1: "Informe o seu gênero",
        text2: "Digite o seu peso",
        text3: "Digite a sua altura"
    )
    
    let step3Content = StepContent(
        image: "step3Image",
        label1: "Email",
        label2: "Senha",
        label3: "Confirmar Senha",
        text1: "Digite o seu email",
        text2: "Digite a sua senha",
        text3: "Confirme a sua senha"
    )
    
    var body: some View {
        ZStack{
                steps == "step1" ?
            Forms(steps: $steps, stepContent: step1Content) :
                (steps == "step2" ?
                    Forms(steps: $steps, stepContent: step2Content) : Forms(steps: $steps, stepContent: step3Content))
        }
    }
}

struct CreateAccountForms_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountForms()
    }
}
