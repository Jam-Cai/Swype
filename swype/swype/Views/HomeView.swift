import SwiftUI
import AVKit

// Video Model
struct Video: Identifiable {
    let id = UUID()
    let file: String
    
    var url: URL? {
            return Bundle.main.url(forResource: file, withExtension: nil)
    }
    
}

// Video Player View
struct VideoPlayerView: View {
    let video: Video
    @State private var player: AVPlayer?
    
    var body: some View {
            VStack {
                if let player = player {
                    VideoPlayer(player: player)
                        .onAppear {
                            player.play()
                        }
                        .onDisappear {
                            player.pause()
                        }
                        .frame(height: UIScreen.main.bounds.height * 0.75)
                        .edgesIgnoringSafeArea(.all)
                } else {
                    Text("Video not found")
                        .foregroundColor(.red)
                }
                
            }
            .onAppear {
                if let url = video.url {
                    player = AVPlayer(url: url)
                }
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
            Video(file: "geometry_quiz"),
        ]
        
        TikTokStyleVideoPlayer(videos: videos)
            .edgesIgnoringSafeArea(.all)
    }
}
