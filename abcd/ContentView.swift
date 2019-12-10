//
//  ContentView.swift
//  abcd
//
//  Created by David Gunawan on 09/12/19.
//  Copyright © 2019 David Gunawan. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var title = "Berapa Ukuran Sepatu Tony?"
    var background = Color.black
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding(.vertical, 12.0)
            Text("3")
                .padding(.vertical, 12)
                .font(.system(size: 56))
                .foregroundColor(.white)
        }
        .frame(width: 300)
        .cornerRadius(10)
        .background(background)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
