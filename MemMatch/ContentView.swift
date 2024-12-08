//
//  ContentView.swift
//  MemMatch
//
//  Created by Sema Topcu on 12/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return ZStack(content: {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
            Text("test")
        })
        .padding(.horizontal)
        .foregroundColor(.orange)
        }
    }


#Preview {
    ContentView()
}
