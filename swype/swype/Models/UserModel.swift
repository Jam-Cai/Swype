import Foundation
import SwiftUI


struct UserModel: Identifiable {
    let id = UUID()
    
    let username: String
    let name: String
    
    let totalXp: Int
    let leaderboardXp: Int
    
    let longestStreak: Int
    let currentStreak: Int
    
    let profilePicture: String
}

let userList = [UserModel(username: "LePookie",
                                name: "LeBron James",
                                totalXp: 50000,
                                leaderboardXp: 6500,
                                longestStreak: 67,
                                currentStreak: 12,
                                profilePicture: "https://hoopshype.com/wp-content/uploads/sites/92/2024/02/i_54_cf_2e_lebron-james.png?w=1000&h=600&crop=1"),
                      UserModel(username: "user2",
                                  name: "John Doe",
                                  totalXp: 50000,
                                  leaderboardXp: 6500,
                                  longestStreak: 67,
                                  currentStreak: 12,
                                  profilePicture: "https://www.freeiconspng.com/thumbs/profile-icon-png/profile-icon-9.png")]

