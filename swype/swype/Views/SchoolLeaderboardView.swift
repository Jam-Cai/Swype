//
//  LeaderboardView.swift
//  swype
//
//  Created by Richard Huang on 2024-08-17.
//

import SwiftUI

struct LeaderboardView: View {
    
    let users = userList
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Button {
                    
                } label: {
                    Text("school")
                        .font(.system(size: 25, weight: .semibold, design: .rounded))
                        .frame(width: 250, height: 40)
                        .background(Color(hue: 0.926, saturation: 0.04, brightness: 0.893))
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
                
                Spacer()
                
                List {
                    ForEach(users) { user in
                        NavigationLink(destination: ProfileView(user: user)) {
                            HStack {
                                AsyncImage(url: URL(string: user.profilePicture)) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 40, height: 40)
                                        .clipShape(Circle())
                                } placeholder: {
                                    ProgressView()
                                        .frame(width: 40, height: 40)
                                }
                                
                                Text(user.username)
                                    .bold()
                                
                                HStack {
                                    Spacer()
                                    Text("\(user.leaderboardXp)")
                                        .bold()
                                }
                                
                                .padding(.vertical, 5)
                            }
                        }
                    }
                }
         
            }
            .navigationTitle("🏆 Leaderboard")
            .background(Color(red: 0.949, green: 0.949, blue: 0.969))


        }


        
    }
}
    
#Preview {
    LeaderboardView()
}
