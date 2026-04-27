//
//  ContentView.swift
//  EndoCare
//
//  Created by Academy on 27/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            SplashScreen()
        }.navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
