//
//  ClassLeaderboardView.swift
//  swype
//
//  Created by Richard Huang on 2024-08-17.
//

import SwiftUI

enum LeaderboardType: String, CaseIterable {
    case classroom = "classroom"
    case school = "school"
}

struct LeaderboardView: View {
    
    @State private var selectedSide: LeaderboardType = .classroom
            
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Picker("Choose", selection: $selectedSide) {
                    ForEach(LeaderboardType.allCases, id: \.self) {
                        Text($0.rawValue)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                

                Spacer()
                ChooseLeaderboardView(selectedLeaderboard: selectedSide)
                Spacer()
                
         
            }
            .navigationTitle("🏆 Leaderboard")
            .background(Color(red: 0.949, green: 0.949, blue: 0.969))


        }

    }
}


struct ChooseLeaderboardView: View {
    
    var selectedLeaderboard: LeaderboardType
    
    let classUsers = classUserList
    let schoolUsers = schoolUserList
    
    var body: some View {
        switch selectedLeaderboard {
            case .classroom:
                LeaderboardListView(users: classUsers)
            case .school:
                LeaderboardListView(users: schoolUsers)
        }
        
    }
    
    
}

#Preview {
    ClassLeaderboardView()
}
