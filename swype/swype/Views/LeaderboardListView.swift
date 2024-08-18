import SwiftUI

struct LeaderboardListView: View {
    
    let users: [UserModel]
    
    var body: some View {
        List(users) { user in // no need for ForEach now!
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
        .background(Color("Color"))
        
    }
}

#Preview {
    LeaderboardListView(users: classList)
}
