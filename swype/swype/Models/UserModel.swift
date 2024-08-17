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

let classList = [UserModel(username: "LePookie",
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

let schoolList = [UserModel(username: "Bloor Collegiate Institute",
                            name: "",
                            totalXp: 0,
                            leaderboardXp: 189000,
                            longestStreak: 0,
                            currentStreak: 0,
                            profilePicture: "https://schoolweb.tdsb.on.ca/portals/bloorci/images/Bloor%20Bear%20Logo.png?ver=r2UvbBdzZk2HtO830oXPqw%3D%3D"),
                  UserModel(username: "Marc Garneau",
                            name: "",
                            totalXp: 0,
                            leaderboardXp: 182000,
                            longestStreak: 0,
                            currentStreak: 0,
                            profilePicture: "https://www.freeiconspng.com/thumbs/profile-icon-png/profile-icon-9.png"),
                  UserModel(username: "Earl Haig Secondary School",
                            name: "",
                            totalXp: 0,
                            leaderboardXp: 177000,
                            longestStreak: 0,
                            currentStreak: 0,
                            profilePicture: "https://www.freeiconspng.com/thumbs/profile-icon-png/profile-icon-9.png") ]





