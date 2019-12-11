//
//  CardView.swift
//  abcd
//
//  Created by David Gunawan on 09/12/19.
//  Copyright © 2019 David Gunawan. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var title = "Berapa ukuran sepatu David?"
    var background = Color.black
    @State var timeRemaining = 0
    @Binding var isFinished: Bool
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding(.vertical, 12.0)
            Text("\(timeRemaining > 0 ? "\(timeRemaining)" : "")")
                .onReceive(timer) { _ in
                    self.countDown(self.timeRemaining)
                }
                .frame(width: 100)
                .padding(.vertical, 12)
                .font(.system(size: 56))
                .foregroundColor(.white)
        }
        .frame(width: 300, height: 150)
        .background(background)
    }
    
    func countDown(_ timeRemaining: Int) {
        if timeRemaining > 0 {
            self.timeRemaining -= 1
        } else {
            self.isFinished = true
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(isFinished: .constant(false))
    }
}
