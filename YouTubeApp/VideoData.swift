//
//  Data.swift
//  YouTubeApp
//
//  Created by Jack Cole on 7/1/24.
//

import Foundation

class VideoData : Identifiable, ModelDelegate {
    
    var model = Model()
    var videos = [Video]()
    
    func videosFetched(_ videos: [Video]) {
        self.videos = videos
    }
    
}
