import SwiftUI
import AVKit

// Video Model
struct Video: Identifiable {
    let id = UUID()
    let url: URL
}

// Video Player View
struct VideoPlayerView: View {
    let video: Video
    @State private var player: AVPlayer
    
    init(video: Video) {
        self.video = video
        self._player = State(initialValue: AVPlayer(url: video.url))
    }
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
                .onAppear {
                    player.play()
                }
                .onDisappear {
                    player.pause()
                }
                .frame(height: UIScreen.main.bounds.height * 0.75)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct TikTokStyleVideoPlayer: View {
    let videos: [Video]
    
    var body: some View {
        ScrollView {
            ForEach(videos) { video in
                VideoPlayerView(video: video)
            }
        }
    }
}

// Main Vertical Scroller View
struct HomeView: View {
    var body: some View {
        let videos = [
            Video(url: URL(string: "https://github.com/Jam-Cai/Swype/blob/main/swype/democlips/geometry_quiz.mp4")!),
            Video(url: URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")!),
            Video(url: URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")!)
        ]
        
        TikTokStyleVideoPlayer(videos: videos)
            .edgesIgnoringSafeArea(.all)
    }
}
