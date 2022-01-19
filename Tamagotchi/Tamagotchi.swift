//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Compton-Burnett, Peter (PGW) on 19/01/2022.
//

import Foundation

class Tamagotchi{
    var hunger: Int = 5
    var happiness: Int = 10
    var age: Int = 0
    var height: Int = 40
    var hygiene: Int = 3
    
    func eatSnack(){
        if hunger > 0{
            hunger -= 1
        }
        
    }
    
    func eatMeal() {
        hunger = 0
    }
    
    func playGame() {
        hunger += 3
        happiness += 10
    }
    
    func growUp() {
        age += 1
        height += 8
    }
    
    func cleanUp() {
        hygiene += 4
        happiness += 2
    }
    
}
