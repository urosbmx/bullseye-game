//
//  game.swift
//  bullseye-game
//
//  Created by Uroš Katanić on 7.3.22..
//

import Foundation

struct Game{
    var targer: Int = Int.random(in: 1..<100)
    var score: Int = 0
    var rond: Int = 1
    
    
    
//    
    func checkWin(targer:Int, win:Int) -> String{
        if(targer == win){
            print("Pogodio si broj")
            return "Bravo pogodio si"
        }else{
            print("Nisi pogodoio")
            return "Nisi pogodio"
        }
    }
    
    
    func points(sliderValue: Int) -> Int {
        return 999
    }
    
    
}
