//
//  WelcomeView.swift
//  Code History Trivia
//
//  Created by Ricardo Guerrero on 13/03/23.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack {
                        Text("Select the correct answers to the following questions")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(destination: GameView(), label: {
                        BottomTextView(str: "Okay, let's go!")
                    })
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
