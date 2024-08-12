//
//  VideoDetailView.swift
//  YouTubeApp
//
//  Created by Jack Cole on 8/8/24.
//

import SwiftUI
import YouTubePlayerKit

struct VideoDetailView: View {
    
    var video: Video
    
    var body: some View {
        
        GeometryReader { proxy in
            VStack(alignment: .leading) {
                
                // configure video player
                let youTubePlayer = YouTubePlayer(
                    source: .video(id: video.snippet?.resourceId?.videoId ?? ""),
                    configuration: .init(autoPlay: false)
                )
                
                // video player
                YouTubePlayerView(youTubePlayer)
                    .frame(width: proxy.size.width, height: proxy.size.width/1.77778)
                
                // title and description
                ScrollView {
                    VStack(alignment: .leading, spacing: 30) {
                        Text(video.snippet?.title ?? "")
                            .font(.headline)
                            .bold()
                        
                        Text(video.snippet?.description ?? "")
                    }
                }
                .scrollIndicators(.hidden)
                .padding()
            }
        }
    }
}
