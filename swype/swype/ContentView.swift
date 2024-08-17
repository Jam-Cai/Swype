//
//  ContentView.swift
//  swype
//
//  Created by Richard Huang on 2024-08-16.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                        .frame(width: 40, height: 40)
                        .foregroundColor(.blue)
                }
            LeaderboardView()
                .tabItem {
                    Image(systemName: "trophy")
                }
            QuestView()
                .tabItem {
                    Image(systemName: "scroll")
                }
            ProfileView(user: userList[0])
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
        .background(Color(hue: 0.517, saturation: 0.322, brightness: 0.818))
    }
}

#Preview {
    ContentView()
}
