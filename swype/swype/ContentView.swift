//
//  ContentView.swift
//  swype
//
//  Created by Richard Huang on 2024-08-16.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    let yourUser = classList[0]
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color("Color"))
    }
    
    var body: some View {
//        let videoURL = Bundle.main.url(forResource: "geometry_quiz", withExtension: "mp4")!
//        player = AVPlayer(url: videoURL)
        TabView {
            HomeView()
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
