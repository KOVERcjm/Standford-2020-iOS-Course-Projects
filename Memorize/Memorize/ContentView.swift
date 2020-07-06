//
//  ContentView.swift
//  Standford CS193p Memorize
//
//  Created by Kover Cheng on 6/7/20.
//  Copyright © 2020 Kover Cheng. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        // A simple way to return a View
        ZStack {
            if (isFaceUp) {
                RoundedRectangle(cornerRadius: 10.0).stroke()
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        // A complete way to return a View, which can have some alignments before content
        HStack(content: {
            ForEach(0..<4) { index in
                CardView(isFaceUp: true)
            }
        })
        // Padding in default size, RECOMMENDED
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
