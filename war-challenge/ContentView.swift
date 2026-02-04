//
//  ContentView.swift
//  war-challenge
//
//  Created by Bachapally Sai Vardhan REDDY on 14/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card4"
    @State var cpuCard = "card14"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            
            Image("background")
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack(){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    
                    // Generating a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    
                    if((playerRand >= 2 && playerRand <= 14) && (cpuRand >= 2 && cpuRand <= 14)){
                        print(playerRand)
                        print(cpuRand)
                        
                        if(playerRand > cpuRand){
                            playerScore += 1
                        }
                        else if(cpuRand > playerRand){
                            cpuScore += 1
                        }
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack(){
                    Spacer()
                    VStack(){
                        
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        
                        Text(String(playerScore)).font(.largeTitle).foregroundColor(Color.white)
                        
                    }
                    Spacer()
                    
                    VStack(){
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
                    
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
