//
//  BottomTextView.swift
//  Code History Trivia
//
//  Created by Ricardo Guerrero on 14/03/23.
//

import SwiftUI

struct BottomTextView: View {
    var str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }
        .background(GameColor.accent)
        .foregroundColor(.white)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Your text here")
    }
}
