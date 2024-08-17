import SwiftUI
import AVKit

// Video Model
struct Video: Identifiable {
    let id = UUID()
    let url: URL
    let title: String
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
            
            Text(video.title)
                .font(.headline)
                .padding()
        }
    }
}

struct TikTokStyleVideoPlayer: View {
    let videos: [Video]
    
    var body: some View {
        TabView {
            ForEach(videos) { video in
                VideoPlayerView(video: video)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

// Main Vertical Scroller View
struct ContentView: View {
    var body: some View {
        let videos = [
            Video(url: URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")!, title: "Video 1"),
            Video(url: URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")!, title: "Video 2"),
            Video(url: URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")!, title: "Video 3")
        ]
        
        TikTokStyleVideoPlayer(videos: videos)
            .edgesIgnoringSafeArea(.all)
    }
}
