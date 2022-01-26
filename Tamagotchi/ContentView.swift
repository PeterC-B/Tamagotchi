//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Compton-Burnett, Peter (PGW) on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var tamagotchi = Tamagotchi()
    @State private var counter = 0
    @State var currentDate = Date()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var aliveTimer = 0
    

    var body: some View {
        VStack{
            Circle()
                .fill(Color.blue)
                .frame(minWidth: 50, idealWidth: 75, maxWidth: 200, minHeight: 75, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Section{
                Text("Hunger: \(tamagotchi.hunger)")
                Text("Happiness: \(tamagotchi.happiness)")
                Text("Age: \(tamagotchi.age) years old")
                Text("Height: \(tamagotchi.height)cm")
                Text("Hygiene: \(tamagotchi.hygiene) points")
                Text("Health: \(tamagotchi.health) points")
                Text("Counter: \(counter)")
            }
            Form{
                Section{
                    Button("Eat Meal") {
                        tamagotchi.eatMeal()
                    }
                        .padding()
                        .border(Color.blue, width: 1)
                        .cornerRadius(10)
                    Button("Eat Snack") {
                        tamagotchi.eatSnack()
                    }
                        .padding()
                        .border(Color.blue, width: 1)
                        .cornerRadius(10)
                }
                Section{
                    Button("Play Game") {
                        tamagotchi.playGame()
                    }
                        .padding()
                        .border(Color.blue, width: 1)
                        .cornerRadius(10)
                    Button("Clean Up") {
                        tamagotchi.cleanUp()
                    }
                        .padding()
                        .border(Color.blue, width: 1)
                        .cornerRadius(10)
                }
                
                Text("Tamagotchi Status:")
                Text(tamagotchi.dead == true ? "Dead": "Alive")
                    .alert(isPresented: $tamagotchi.dead) {
                        Alert(title: Text("Tamagotchi Died"),
                              dismissButton: .destructive(Text("Play Again...")) {
                                                  tamagotchi = Tamagotchi()
                                              }
                        )
                    }
                 
                Text("\(currentDate)")
                            .onReceive(timer) { input in
                                currentDate = input
                                aliveTimer += 1
                                if aliveTimer % 3 == 0{
                                    //tamagotchi.hungerTimer()
                                }
                                if aliveTimer % 10 == 0{
                                    //tamagotchi.ageIncrement()
                                }
                                if aliveTimer % 2 == 0{
                                    if Int.random(in: 1...2) == 1{
                                        tamagotchi.makeSick()
                                    }
                                }
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

