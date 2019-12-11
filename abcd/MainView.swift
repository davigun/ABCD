//
//  MainView.swift
//  abcd
//
//  Created by David Gunawan on 10/12/19.
//  Copyright © 2019 David Gunawan. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var title = "Berapa ukuran sepatu David?"
    var background = Color.black
    var counter = 5
    @State private var answerTime = false
    @State private var isShown = false
    @State private var player1Finish = false
    @State private var player2Finish = false
    @State private var isPlayer1 = false
    
    var body: some View {
        VStack(alignment: .center) {
            ActionView(isActionShown: $answerTime, isPlayer1: .constant(true))
            .rotationEffect(.degrees(-180))
            CardView(title: title, background: background, timeRemaining: counter, isFinished: $answerTime)
                .rotationEffect(.degrees(-180))
                .cornerRadius(10)
            Spacer()
            Divider()
            Spacer()
            CardView(title: title, background: background, timeRemaining: counter, isFinished: $answerTime)
                .cornerRadius(10)
            ActionView(isActionShown: $answerTime, isPlayer1: .constant(false))
        }
        .frame(width: 300, height: 700, alignment: .center)
        .padding(.vertical, 12.0)
    }
}

struct ActionView: View {
    @Binding var isActionShown: Bool
    @Binding var isPlayer1: Bool
    var body: some View {
        HStack {
            ActionButton(buttonLabel: isActionShown ? "Salah" : "", answerCorrect: false, isPlayer1: isPlayer1)
            Spacer()
            ActionButton(buttonLabel: isActionShown ? "Benar" : "", answerCorrect: true, isPlayer1: isPlayer1)
        }
        .frame(width: 200)
    }
}

struct ActionButton: View {
    var buttonLabel = ""
    var answerCorrect = false
    var isPlayer1 = false
    var body: some View {
        Button(action: {
            if self.answerCorrect {
                print("\(self.isPlayer1 ? "Player 1 is": "Player 2 is") Correct")
            } else {
                print("\(self.isPlayer1 ? "Player 1 is": "Player 2 is") False")
            }
        }) {
            Text(buttonLabel)
                .font(.system(size: 20))
        }
        .frame(width: 60, height: 60)
        .padding(.top, 24)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
