//
//  QuestionView.swift
//  Code History Trivia
//
//  Created by Ricardo Guerrero on 15/03/23.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
     
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in
                    Button(action: {
                        print("Tapped on the option with the text: \(question.possibleAnswers[answerIndex])")
                        viewModel.makeGuess(atIndex: answerIndex)
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            .background(viewModel.color(forOptionIndex: answerIndex))
                    })
                    .disabled(viewModel.guessWasMade)
                }
            }
            if viewModel.guessWasMade {
                Button(action: {
                    viewModel.displayNextScreen()
                }, label: {
                    BottomTextView(str: "Next")
                })
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
            .environmentObject(GameViewModel())
    }
}
