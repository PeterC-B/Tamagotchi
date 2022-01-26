//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Compton-Burnett, Peter (PGW) on 19/01/2022.
//

import Foundation

class Tamagotchi: ObservableObject{
    @Published var hunger: Int = 5
    @Published var happiness: Int = 10
    @Published var age: Int = 0
    @Published var height: Int = 40
    @Published var hygiene: Int = 3
    @Published var health: Int = 10
    @Published var dead = false
    
    func eatSnack(){
        if hunger > 0{
            hunger -= 1
        }
        checkDeath()
        
    }
    
    func eatMeal() {
        hunger = 0
        checkDeath()
    }
    
    func playGame() {
        hunger += 3
        happiness += 10
        checkDeath()
    }
    
    func growUp() {
        age += 1
        height += 8
        checkDeath()
    }
    
    func cleanUp() {
        hygiene += 4
        happiness += 2
        checkDeath()
    }
    
    func checkDeath() {
        if hunger >= 30 || hygiene == 0 || age == 10 || health <= 0{
            dead = true
        }
    }
    
    func hungerTimer() {
        hunger += 5
        checkDeath()
    }
    
    func ageIncrement() {
        age += 1
        checkDeath()
    }
    
    func makeSick() {
        health -= 5
        checkDeath()
    }
    
}
