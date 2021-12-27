//
//  ContentView.swift
//  toggleGame
//
//  Created by macbook on 07/12/2021.
//

import SwiftUI

struct ContentView: View {
    var emojies: Array<String> = ["🚠" , "🚁" , "⛴" , "🚘"]
    
    var body: some View {
       
        HStack {
            cardView(content: emojies[0])
            cardView(content: emojies[1])
            cardView(content: emojies[2])
            cardView(content: emojies[3])
        }
        .foregroundColor(.red)
        .padding(.horizontal)
        
    }
}

struct cardView: View {
    var content: String
   @State var isFaceUp: Bool = false

    var body: some View{
                
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                shape.fill().foregroundColor(.white)
               shape.stroke(lineWidth: 3)
            Text(content)
                .font(.largeTitle)
        }
        else{
            shape.fill()
        }
    }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
}
















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
.previewInterfaceOrientation(.portraitUpsideDown)
        ContentView()
            .preferredColorScheme(.light)
    }
}
}
