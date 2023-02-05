//
//  DetailView.swift
//  HackerNewsReader
//
//  Created by Michael Testut on 1/31/23.
//

import SwiftUI

struct DetailView: View {
    
    let url:String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url:"http://google.com")
    }
}

