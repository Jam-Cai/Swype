//
//  ContentView.swift
//  swype
//
//  Created by Richard Huang on 2024-08-16.
//

import SwiftUI

struct ContentView: View {
    
    let yourUser = classList[0]
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color("Color"))
    }
    
    var body: some View {
        TabView {
            VerticalVideoScroller()
                .tabItem {
                    Image(systemName: "house")
                }
            LeaderboardView()
                .tabItem {
                    Image(systemName: "trophy")
                }
            QuestView()
                .tabItem {
                    Image(systemName: "scroll")
                }
            ProfileView(user: yourUser)
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    ContentView()
}
