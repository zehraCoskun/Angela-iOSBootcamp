//
//  DetailViews.swift
//  HackerNews
//
//  Created by Zehra Coşkun on 2.08.2023.
//

import SwiftUI
import WebKit

struct DetailViews: View {
    
    let url : String?
    var body: some View {
        
        WebView(urlString: url)
    }
}

struct DetailViews_Previews: PreviewProvider {
    static var previews: some View {
        DetailViews(url: "https://translate.google.com")
    }
}


