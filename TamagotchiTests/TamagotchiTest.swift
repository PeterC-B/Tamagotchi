//
//  TamagotchiTest.swift
//  TamagotchiTests
//
//  Created by Compton-Burnett, Peter (PGW) on 19/01/2022.
//

import XCTest

class TamagotchiTest: XCTestCase {
    
    //RED
    func testEatSnackHungerDecreasesBy1() throws {
        //arrange (Test setup-up)
        let tamagotchi = Tamagotchi()
        let expectedHunger = 4
            
        //act (Perform the functionality we want to test)
        tamagotchi.eatSnack()
        
        //assert (Check it did what we expeted)
        XCTAssertEqual(tamagotchi.hunger, expectedHunger)
    }
    
    func testWhereTamagotchiHasHunger0EatSnackKeepsHungerAt0() throws {
        //arrange
        let tamagotchi = Tamagotchi()
        tamagotchi.hunger = 0
        let expectedHunger = 0
        
        //act
        tamagotchi.eatSnack()
        
        //assert
        XCTAssertEqual(tamagotchi.hunger, expectedHunger)
    }
    
    func testEatMealHungerSetTo0() throws {
        //arrange
        let tamagotchi = Tamagotchi()
        let expectedHunger = 0
            
        //act
        tamagotchi.eatMeal()
        
        //assert
        XCTAssertEqual(tamagotchi.hunger, expectedHunger)
    }
    
    func testPlayGameIncreasesHappinessBy10AndHungerBy3() throws {
        //arrange
        let tamagotchi = Tamagotchi()
        let expectedHappiness = tamagotchi.happiness + 10
        let expectedHunger = tamagotchi.hunger + 3
            
        //act
        tamagotchi.playGame()
        
        //assert
        XCTAssertEqual(tamagotchi.hunger, expectedHunger)
        XCTAssertEqual(tamagotchi.happiness, expectedHappiness)
    }
    
    func testGrowUpAgeIncreasesBy1AndHeightIncreasesBy8() throws {
        //arrange
        let tamagotchi = Tamagotchi()
        let expectedAge = tamagotchi.age + 1
        let expectedHeight = tamagotchi.height + 8
            
        //act
        tamagotchi.growUp()
        
        //assert
        XCTAssertEqual(tamagotchi.age, expectedAge)
        XCTAssertEqual(tamagotchi.height, expectedHeight)
    }
    
    func testCleanedUpHygieneIncreasesBy4HappinessIncreasesBy2() throws {
        //arrange
        let tamagotchi = Tamagotchi()
        let expectedHygiene = tamagotchi.hygiene + 4
        let expectedHappiness = tamagotchi.happiness + 2
            
        //act
        tamagotchi.cleanUp()
        
        //assert
        XCTAssertEqual(tamagotchi.hygiene, expectedHygiene)
        XCTAssertEqual(tamagotchi.happiness, expectedHappiness)
    }
    
    
    
    

}
