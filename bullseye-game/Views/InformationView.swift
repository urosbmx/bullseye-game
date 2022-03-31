//
//  InformationView.swift
//  bullseye-game
//
//  Created by Uroš Katanić on 31.3.22..
//

import SwiftUI

struct InformationView: View {
    @State private var game: Game = Game()
    @State private var gessNumber: Int = Game().targer
    var body: some View {
        VStack{
            Text("🎯🎯🎯🎯\nPut the bullseye as close as you can to".uppercased())
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            Text(String(gessNumber))
                .font(.title)
                .bold()
        }

            
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
