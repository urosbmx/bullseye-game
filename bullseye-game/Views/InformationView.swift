//
//  InformationView.swift
//  bullseye-game
//
//  Created by Uroš Katanić on 31.3.22..
//

import SwiftUI

struct InformationView: View {
    var text: String
    var body: some View {
        VStack{
            Text(text.uppercased())
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.bottom)
                

        }

            
    }
}

struct BigNumberText: View{
    @State private var game: Game = Game()
    @State private var gessNumber: Int = Game().targer
    var text: String
    var body: some View{
        VStack{
            Text(text)
                .kerning(-1.0)
                .font(.largeTitle)
                .bold()
                .fontWeight(.black)
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView(text: "🎯🎯🎯🎯\nPut the bullseye as close as you can to")
        BigNumberText(text: "999")
    }
}
