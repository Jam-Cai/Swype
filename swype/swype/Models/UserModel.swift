import Foundation
import SwiftUI


struct UserModel {
    let username: String
    let name: String
    
    let totalXp: Int
    let leaderboardXp: Int
    
    let longestStreak: Int
    let currentStreak: Int
    
    let profilePicture: String
}

struct fakePeople {
    static let user1 = UserModel(username: "user1", name: "John Doe", totalXp: 50000, leaderboardXp: 6500, longestStreak: 67, currentStreak: 12, profilePicture: <#T##String#>)
}

