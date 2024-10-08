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
            .background(Color("Color"))
            
            
            
        }
        
        
        
    }
}


struct ChooseLeaderboardView: View {
    
    var selectedLeaderboard: LeaderboardType
    
    let classUsers = sortedClassList
    let schoolUsers = sortedSchoolList
    
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
    LeaderboardView()
}
