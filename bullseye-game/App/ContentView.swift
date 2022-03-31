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
        
        ZStack {
            Color("Background").ignoresSafeArea(.all)
            VStack{
                HStack{
                    InformationView()
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
                    Button("Hit me".uppercased()) {
                        alertVisible = true

                    }
                    .padding(20.0)
                    .background(
                        ZStack {

                            Color("ButtonColor")
                            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                        }
                    )
                    .foregroundColor(Color("FontButtonColor"))
                    .cornerRadius(21)
                    .font(.title3)

                    .alert(isPresented: $alertVisible){

                        Alert (title: Text("Hello there"),
                               message: Text("The slider value is \(Int(sliderValie)).\n" + "You scored \(self.game.points(sliderValue: Int(sliderValie.rounded())))"),
                               dismissButton: .default(Text("CLOSE"))
                        )
                    }


                }

                
            }
            
        }
        .foregroundColor(Color("FontColor"))
    }
        
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
        ContentView()
    }
}
