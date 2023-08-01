//
//  ContentView.swift
//  Information
//
//  Created by Zehra Coşkun on 1.08.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        
        ZStack{
            Color(red: 0.51, green: 0.93, blue: 0.93, opacity: 1.00)
                .ignoresSafeArea()
            VStack {
                Image("zehra")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 250, height: 250)
                    .overlay(Circle().stroke(Color(.gray), lineWidth: 5))
                
                Text("Zehra Coskun")
                    .foregroundColor(.gray)
                    .font(Font.custom("LobsterTwo-Bold", size: 30))
                
                Text("iOS Developer")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
            Divider()
                VStack {
                    InfoView(text: "[zehraxcoskun@gmail.com](https://www.google.es/)", imageName: "gmail")
                   InfoView(text: "[linkedin.com/in/zehracoskun](https://www.google.es/)", imageName: "linkedin")
                }
            }
        }}
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
