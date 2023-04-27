//
//  Game.swift
//  Apple Pie
//
//  Created by Thrishalini on 09/01/23.
//

import Foundation

struct Game {
    var word : String
    var incorrectMovesRemaining : Int
    var guessedLetters : [Character]
    
    mutating func playerGuessed(letter : Character){
        guessedLetters.append(letter)
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
    
    var formattedWord : String {
        var guessword = ""
        for letter in word {
            if guessedLetters.contains(letter){
                guessword += "\(letter)"
            }else{
                guessword += "_"
            }
        }
        return guessword
    }
}
