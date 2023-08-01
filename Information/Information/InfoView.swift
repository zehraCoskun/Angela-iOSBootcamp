//
//  InfoView.swift
//  Information
//
//  Created by Zehra Coşkun on 1.08.2023.
//

import SwiftUI

struct InfoView: View {
    let text : String
    let imageName : String
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.gray)
            .frame(height: 40)
            .overlay(
                HStack{
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
             
                    Text(.init(text))
                    .accentColor(.white)
                })
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "[zehraxcoskun@gmail.com](https://www.google.es/)", imageName: "gmail")
    }
}
