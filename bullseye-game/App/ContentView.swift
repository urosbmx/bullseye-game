//
//  ContentView.swift
//  bullseye-game
//
//  Created by Uroš Katanić on 7.3.22..
//

import SwiftUI
struct ContentView: View {
    @State private var sliderValie:Double = 50.0
    @State private var  alertVisible: Bool = false
    @State private var game: Game = Game()
    @State private var gessNumber: Int = Game().targer
    
    var body: some View {
        
        VStack{
            HStack{
                Text("🎯🎯🎯🎯\nPut the bullseye as close as you can to".uppercased())
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                    

            }
            HStack{
                Text(String(gessNumber))
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
            HStack{
                Button("Hit!!") {
                    alertVisible = true

                }
              
                .alert(isPresented: $alertVisible){
                    
                    Alert (title: Text("Hello there"),
                           message: Text("The slider value is \(Int(sliderValie)).\n" + "You scored \(self.game.points(sliderValue: Int(sliderValie.rounded())))"),
                           dismissButton: .default(Text("CLOSE")))
                }
                

            }
            
        }
       
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
