//
//  VideoRowView.swift
//  YouTubeApp
//
//  Created by Jack Cole on 8/8/24.
//

import SwiftUI

struct VideoRowView: View {
    
    var video: Video
    
    var body: some View {
        
        VStack(alignment: .leading) {
            if let url = URL(string: video.snippet?.thumbnails?.medium?.url ?? "") {
                
                AsyncImage(url: url) { image in
                    
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                    
                } placeholder: {
                    ProgressView()
                }
            }
            Text(video.snippet?.title ?? "")
                .bold()
            
        }
        .padding(.vertical)
    }
}
