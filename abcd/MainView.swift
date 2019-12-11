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
    
    var body: some View {
        VStack(alignment: .center) {
            if self.answerTime {
                ActionView()
                .rotationEffect(.degrees(-180))
            } else {
                Spacer()
            }
            CardView(title: title, background: background, timeRemaining: counter, isFinished: $answerTime)
                .rotationEffect(.degrees(-180))
                .cornerRadius(10)
            Spacer()
            Divider()
            Spacer()
            CardView(title: title, background: background, timeRemaining: counter, isFinished: $answerTime)
                .cornerRadius(10)
            if self.answerTime {
                ActionView()
            } else {
                Spacer()
            }
        }
        .frame(width: 300, height: 700, alignment: .center)
        .padding(.vertical, 12.0)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct ActionButton: View {
    var buttonLabel = ""
    var body: some View {
        Button(action: {
            
        }) {
            Text(buttonLabel)
                .font(.system(size: 20))
        }
        .frame(width: 60, height: 60)
        .padding(.top, 24)
    }
}

struct ActionView: View {
    var body: some View {
        HStack {
            ActionButton(buttonLabel: "Salah")
            Spacer()
            ActionButton(buttonLabel: "Benar")
        }
        .frame(width: 200)
    }
}
