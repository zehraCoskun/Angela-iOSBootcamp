//
//  ContentView.swift
//  Dicee
//
//  Created by Zehra Coşkun on 1.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftNum = 1
    @State var rightNum = 4
    
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack{
                    DiceView(n: leftNum)
                    DiceView(n: rightNum)
                }
                .padding(.horizontal)
                Spacer()
                
                Button {
                    self.rightNum = Int.random(in: 1...6)
                    self.leftNum = Int.random(in: 1...6)
                } label: {
                    Text("ROLL")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(20)
                }
                Spacer()

            }
        }
    }
}

struct DiceView: View {
    var n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

