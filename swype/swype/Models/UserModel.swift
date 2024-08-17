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

let sortedClassList = classList.sorted(by: {$0.leaderboardXp > $1.leaderboardXp})
let sortedSchoolList = schoolList.sorted(by: {$0.leaderboardXp > $1.leaderboardXp})










