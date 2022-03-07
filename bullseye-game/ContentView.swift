//
//  ContentView.swift
//  bullseye-game
//
//  Created by Uroš Katanić on 7.3.22..
//

import SwiftUI
struct ContentView: View {
    @State private var sliderValie:Double = 50.0
    var body: some View {
        VStack{
            HStack{
                Text("🎯🎯🎯🎯\nPut the bullseys as close as you can to".uppercased())
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
            }
            HStack{
                Text("50")
                    .font(.title)
                    .bold()
            }
            HStack{
                    Text("1")
                    .bold()
                Slider(value: self.$sliderValie, in: 1.0...100.0)
                    Text("100")
                    .bold()
            }
            .padding(.horizontal)
            
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
