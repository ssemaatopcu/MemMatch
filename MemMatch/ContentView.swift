//
//  ContentView.swift
//  MemMatch
//
//  Created by Sema Topcu on 12/8/24.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚀", "⛵️", "✈️", "🚗", "🚲", "🚠", "🚛", "🛴", "🚆", "🛳️", "🚁", "🛵", "🚕"]
    @State var emojiCount = 6
    
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }
            HStack {
                remove
                Spacer()
                add
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
        .foregroundColor(.orange)
    }
    var remove: some View {
        Button(action: {
            emojiCount += 1
        }, label: {
            Text("Remove Card")
        })
    }
    var add: some View {
        Button(action: {
            emojiCount -= 1
        }, label: {
            Text("Add Card")
        })
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text("✈️")
                    .font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}


#Preview {
    ContentView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    
}
#Preview {
    ContentView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.light/*@END_MENU_TOKEN@*/)
    
}
