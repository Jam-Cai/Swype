import SwiftUI
import AVKit

struct ContentView: View {
    
    let yourUser = classList[0]
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color("Color"))
    }
    
    var body: some View {
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
