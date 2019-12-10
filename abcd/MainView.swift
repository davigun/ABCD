//
//  MainView.swift
//  abcd
//
//  Created by David Gunawan on 10/12/19.
//  Copyright © 2019 David Gunawan. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            CardView()
                .rotationEffect(.degrees(-180))
                .cornerRadius(10)
            Spacer()
            Divider()
            Spacer()
            CardView()
                .cornerRadius(10)
            Spacer()
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
