//
//  TableView.swift
//  YouTubeApp
//
//  Created by Jack Cole on 7/1/24.
//

import SwiftUI

struct FeedView: View {
    
    @State private var videos = [Video]()
    @State private var selectedVideo: Video?
    
    var body: some View {
        List(videos) { v in
            VideoRowView(video: v)
                .onTapGesture {
                    selectedVideo = v
                }
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .scrollIndicators(.hidden)
        .padding(.horizontal)
        .task {
            self.videos = await DataService().getVideos()
        }
        .sheet(item: $selectedVideo) { v in
            VideoDetailView(video: v)
        }
    }
}

#Preview {
    FeedView()
}
