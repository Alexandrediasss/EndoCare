//
//  DiaryScreen.swift
//  EndoCare
//
//  Created by Academy on 19/06/26.
//

import SwiftUI

struct DiaryScreen: View {
    var body: some View {
        ScrollView(.vertical){
            CardCharacterComponent()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

struct DiaryScreen_Previews: PreviewProvider {
    static var previews: some View {
        DiaryScreen()
    }
}
