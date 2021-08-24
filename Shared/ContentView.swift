//
//  ContentView.swift
//  Shared
//
//  Created by Fauzan Achmad on 20/08/21.
//

import SwiftUI

var cards: [String] = ["🍏", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇"]

struct ContentView: View {
  var body: some View {
    VStack {
      ScrollView {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))], content: {
          ForEach(cards[0..<cards.count], id: \.self) { card in
            CardView(content: card).aspectRatio(2/3, contentMode: .fit).onTapGesture {
              print("hello \(card)")
            }
          }
        })
      }.foregroundColor(.red)
    }.padding(.horizontal)
    
  }
}

struct CardView: View {
  var content: String
  
  var body: some View {
    ZStack {
      let shape = RoundedRectangle(cornerRadius: 20)
      shape.fill().foregroundColor(.white)
      shape.strokeBorder(lineWidth: 3)
      Text(content)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().preferredColorScheme(.light)
    ContentView().preferredColorScheme(.dark)
  }
}
