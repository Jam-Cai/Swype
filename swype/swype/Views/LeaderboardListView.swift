//
//  LeaderboardView.swift
//  swype
//
//  Created by Richard Huang on 2024-08-17.
//

import SwiftUI

struct LeaderboardView: View {
    
    let users: [UserModel]
    
    var body: some View {
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
}

#Preview {
    LeaderboardView(users: classUserList)
}
