//
//  QuestView.swift
//  swype
//
//  Created by Richard Huang on 2024-08-17.
//

import SwiftUI

struct QuestView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                ForEach(questList) { quest in
                    QuestBlock(quest: quest)
                        .frame(width: .infinity, height: 100)
                        .padding(.horizontal)
                    
                }
                Spacer()
                
                Text("🔥 Current Streak: \(classList[0].currentStreak)")
                    .font(.system(size: 25, weight: .semibold, design: .rounded))
                    .padding()
                Text("👏 Longest Streak: \(classList[0].longestStreak)")
                    .font(.system(size: 25, weight: .semibold, design: .rounded))
                    .padding()
                
                Text("finish all daily quests to add one to your current streak!")
                    .font(.system(size: 12.5, weight: .regular, design: .rounded))
                    .padding()
                
                
            }
            .navigationTitle("📜Quests")
            .background(Color("Color"))
            
            

        }
        
        
    }
   
    

}

struct QuestBlock: View {
    
    let quest: QuestModel
    
    var body: some View {
        HStack {
            Image(systemName: quest.icon)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .foregroundColor(Color(hue: 0.572, saturation: 0.411, brightness: 0.934))
            
            Spacer()
            VStack(alignment: .leading){
                Text(quest.name)
                    .frame(width: .infinity)
                    .font(.system(size: 15, weight: .semibold, design: .rounded))
                ProgressBar(currentProgression: quest.currentProgression, finalProgression: quest.finalProgression)
            }
            .padding()
            
        }
        .padding(40)
        
    }
    
}


struct ProgressBar: View {
    
    var currentProgression: Int
    var finalProgression: Int
    var progress: CGFloat {
        return CGFloat(currentProgression) / CGFloat(finalProgression)
    }
    let width:CGFloat = 300
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: width, height: 40)
                .foregroundColor(.white)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: progress * width, height: 30)
                .foregroundColor(Color(hue: 0.572, saturation: 0.411, brightness: 0.934))
                .offset(x: 5)
            
            Text("\(currentProgression) / \(finalProgression)")
                .font(.system(size: 15, weight: .semibold, design: .rounded))
                .foregroundColor(.black)
                .frame(width: width, height: 40)
                .multilineTextAlignment(.center)
        }
        
    }
    
}

#Preview {
    QuestView()
}
