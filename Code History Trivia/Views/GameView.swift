//
//  ContentView.swift
//  Code History Trivia
//
//  Created by Ricardo Guerrero on 02/03/23.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.currentProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundColor(.white)
        .navigationBarBackButtonHidden(true)
        .environmentObject(viewModel)
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)), isActive: .constant(viewModel.gameIsOver), label: { EmptyView() })
        )
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GameView()
        }
    }
}
