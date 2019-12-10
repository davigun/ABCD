//
//  CardView.swift
//  abcd
//
//  Created by David Gunawan on 09/12/19.
//  Copyright © 2019 David Gunawan. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var title = "Berapa ukuran sepatu Toni?"
    var background = Color.black
    @State var timeRemaining = 10
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
            Text("\(timeRemaining)")
                .onReceive(timer) { _ in
                    if self.timeRemaining > 0 {
                        self.timeRemaining -= 1
                    }
                }
                .padding(.vertical, 12)
                .font(.system(size: 56))
                .foregroundColor(.white)
        }
        .frame(width: 300, height: 150)
        .background(background)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
