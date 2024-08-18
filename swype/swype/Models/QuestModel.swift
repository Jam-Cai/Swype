import Foundation

struct QuestModel: Identifiable {
    let id = UUID()
    
    let name: String
    let finalProgression: Int
    let currentProgression: Int
    let icon: String
    
    
}

let questList = [QuestModel(name: "Earn 50 Xp", finalProgression: 50, currentProgression: 20, icon: "star"),
                 QuestModel(name: "Spend 15 minutes learning", finalProgression: 15, currentProgression: 13, icon: "timer"),
                 QuestModel(name: "Score perfect on 3 lessons", finalProgression: 3, currentProgression: 2, icon: "target")]
