//
//  DataService.swift
//  YouTubeApp
//
//  Created by Jack Cole on 8/8/24.
//

import Foundation

struct DataService {
    
    private let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func getVideos() async -> [Video] {
        
        guard apiKey != nil else {
            return [Video]()
        }
        
        let urlString = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLMRqhzcHGw1Y5Cluhf7pKRNZtKaA3Q4kg&maxResults=20&key=\(apiKey!)"
        
        let url = URL(string: urlString)
        
        if let url = url {
            let request = URLRequest(url: url)
            
            let session = URLSession.shared
            
            do {
                let (data, _) = try await session.data(for: request)
                
                let decoder = JSONDecoder()
                
                let playlist = try decoder.decode(Playlist.self, from: data)
                
                return playlist.items
                
            } catch {
                print(error)
            }
        }
        
        return [Video]()
    }
}
