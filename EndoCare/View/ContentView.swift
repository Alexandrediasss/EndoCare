//
//  ContentView.swift
//  EndoCare
//
//  Created by Academy on 27/04/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isLogged : Bool = false
    
    var body: some View {
        if isLogged {
            NavigationView{
                DiaryScreen()
            }
        } else {
            NavigationView{
                SplashScreen(isLogged: $isLogged)
            }.navigationViewStyle(.stack)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
