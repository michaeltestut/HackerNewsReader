//
//  ContentView.swift
//  HackerNewsReader
//
//  Created by Michael Testut on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager=NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                HStack {
                    NavigationLink(destination: DetailView(url:post.url)) {
                        Text(String(post.points))
                        Text(post.title)
                    }
                    
                }
            }
            .navigationTitle("HackerNews")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
