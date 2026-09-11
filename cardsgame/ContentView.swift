//
//  ContentView.swift
//  cardsgame
//
//  Created by Marcelo Pignataro on 10/09/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card13";
    @State var machineCard = "card10";
    @State var playerScore = 0;
    @State var machineScore = 0;
    
    var body: some View {
        ZStack {
            Image("background-plain")
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(machineCard)
                    Spacer()
                }
                Spacer()
                Button {
                    dealCards()
                } label: {
                    Image("button")
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("PLAYER")
                            .font(.headline)
                            .padding(.bottom)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("MACHINE")
                            .font(.headline)
                            .padding(.bottom)
                        Text(String(machineScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundStyle(.white)
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
    
    func dealCards() {
        var cardStr = "card";
        var playerCardNumber = Int.random(in: 2...14)
        playerCard = cardStr + String(playerCardNumber);
        
        var machineCardNumber = Int.random(in: 2...14)
        machineCard = cardStr + String(machineCardNumber);
        
        if playerCardNumber > machineCardNumber {
            playerScore += 1
        } else if playerCardNumber < machineCardNumber {
            machineScore += 1
        }
    }
}

#Preview {
    ContentView()
}
