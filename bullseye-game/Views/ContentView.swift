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
                VStack{
                    InformationView(text: "🎯🎯🎯🎯\nPut the bullseye as close as you can to")
                    BigNumberText(text: String(gessNumber))
                }
                HStack{
                    slider(sliderValie: $sliderValie)
                }
                HitMeButton(alertIsVisible: $alertVisible, sliderValue: $sliderValie, game: $game)
            }
            
        }
        .foregroundColor(Color("FontColor"))
    }
    
    struct slider: View{
        @Binding var sliderValie:Double
        var body: some View {
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
    
    struct HitMeButton: View {
        @Binding var alertIsVisible: Bool
        @Binding var sliderValue: Double
        @Binding var game: Game
        
        var body: some View {
            Button(action: {
                print("Hello, SwiftUI!")
                alertIsVisible = true
            }) {
                Text("Hit me".uppercased())
                    .bold()
                    .font(.title3)
            }
            .padding(20.0)
            .background(
                ZStack {
                    Color("ButtonColor")
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                }
            )
            .foregroundColor(Color.white)
            .cornerRadius(21.0)
            .alert(isPresented: $alertIsVisible, content: {
                let roundedValue = Int(sliderValue.rounded())
                return Alert(title: Text("Hello there!"), message: Text("The slider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome!")))
            })
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
        ContentView()
    }
}
