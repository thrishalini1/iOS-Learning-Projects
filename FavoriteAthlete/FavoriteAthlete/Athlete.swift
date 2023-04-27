//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Thrishalini on 10/01/23.
//

import Foundation

struct Athlete:CustomStringConvertible{

    
    
    var name:String
    var age:Int
    var league:String
    var team:String
    
    var description: String{
        return "\(name) is \(age) years old and plays for the\(team) in the \(league)."
       
    }
    
}
