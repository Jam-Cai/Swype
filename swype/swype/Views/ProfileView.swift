//
//  ProfileView.swift
//  swype
//
//  Created by Richard Huang on 2024-08-17.
//

import SwiftUI

struct ProfileView: View {
    
    let user: UserModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.black)
                }
                
            }
            .padding()
            AsyncImage(url: URL(string: user.profilePicture)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(hue: 0.591, saturation: 0.764, brightness:        0.608), lineWidth: 10))
            } placeholder: {
                ProgressView()
                    .frame(width: 40, height: 40)
            }
            
            Text(user.username)
                .font(.system(size: 50, weight: .bold, design: .rounded))
            
            Text("⭐️Total XP: \(user.totalXp)")
                .font(.system(size: 25, weight: .semibold, design: .rounded))
            
            Text("🔥Longest Streak: \(user.longestStreak)")
                .font(.system(size: 25, weight: .semibold, design: .rounded))
            
            Spacer()
            
        }
        .background(Color(hue: 0.591, saturation: 0.436, brightness: 0.772))
    }
}

#Preview {
    ProfileView(user: userList[0])
}
