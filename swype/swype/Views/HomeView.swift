import SwiftUI
import AVKit

// Video Model
struct Video: Identifiable {
    let id = UUID()
    let url: URL?
}

// Video Player View
struct VideoPlayerView: View {
    let video: Video
    @State private var player: AVPlayer?
    @Binding var isPlaying: Bool // State to control whether this video should play

    var body: some View {
        VStack {
            if let player = player {
                VideoPlayer(player: player)
                    .onAppear {
                        if isPlaying {
                            player.play()
                        }
                    }
                    .onChange(of: isPlaying) { playing in
                        if playing {
                            player.play()
                        } else {
                            player.pause()
                        }
                    }
                    .onDisappear {
                        player.pause()
                    }
                    .frame(height: UIScreen.main.bounds.height * 0.75)
                    .edgesIgnoringSafeArea(.all)
            } else {
                Text("Unable to load video")
                    .foregroundColor(.red)
                    .frame(height: UIScreen.main.bounds.height * 0.75)
                    .edgesIgnoringSafeArea(.all)
            }
        }
        .onAppear {
            if let url = video.url {
                player = AVPlayer(url: url)
            }
        }
    }
}
struct ScrollStyleVideoPlayer: View {
    let videos: [Video]
    @State private var currentVideoId: UUID? = nil

    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(videos) { video in
                    GeometryReader { geometry in
                        VideoPlayerView(video: video, isPlaying: .constant(currentVideoId == video.id))
                            .onAppear {
                                updateCurrentVideo(geometry: geometry, video: video)
                            }
                            .onChange(of: geometry.frame(in: .global).minY) { _ in
                                updateCurrentVideo(geometry: geometry, video: video)
                            }
                            .frame(height: UIScreen.main.bounds.height)
                    }
                    .frame(height: UIScreen.main.bounds.height)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }

    private func updateCurrentVideo(geometry: GeometryProxy, video: Video) {
        let minY = geometry.frame(in: .global).minY
        let maxY = geometry.frame(in: .global).maxY
        let screenHeight = UIScreen.main.bounds.height

        if minY >= 0 && maxY <= screenHeight * 1.5 {
            if currentVideoId != video.id {
                DispatchQueue.main.async {
                    currentVideoId = video.id
                }
            }
        }
    }
}


struct HomeView: View {
    var body: some View {
        let videos = [
            Video(url: URL(string: "https://github.com/Jam-Cai/Swype/raw/main/swype/democlips/skip2.mp4")!),
            Video(url: URL(string: "https://github.com/Jam-Cai/Swype/raw/main/swype/democlips/skip1.mp4")!),
            Video(url: URL(string: "https://github.com/Jam-Cai/Swype/raw/main/swype/democlips/geometry_quiz.mp4")!)
        ]

        ScrollStyleVideoPlayer(videos: videos)
            .edgesIgnoringSafeArea(.all)
    }
}

