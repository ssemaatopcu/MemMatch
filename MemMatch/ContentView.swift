//
//  ContentView.swift
//  MemMatch
//
//  Created by Sema Topcu on 12/8/24.
//

import SwiftUI

struct ContentView: View {
    let viewModel: EmojiMemMatchGame
    
    var body: some View {
        ScrollView {
            LazyVGrid (columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(viewModel.model.cards) { card in
                    CardView(card: card)
                        .aspectRatio(2/3, contentMode: .fit)
                }
            }
        }
        .foregroundColor(.orange)
        .padding(.horizontal)
    }
}

struct CardView: View {
    let card: MemMatchGame<String>.Card
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 4)
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
    }
}

