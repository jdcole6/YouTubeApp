//
//  Model.swift
//  YouTubeApp
//
//  Created by Jack Cole on 6/30/24.
//

import Foundation

protocol ModelDelegate {
    
    func videosFetched(_ videos: [Video])
    
}

class Model {
    
    var delegate: ModelDelegate?
    
    func getVideos() {
        
        // Create URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Get URLSession object
        let session = URLSession.shared
        
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            if error != nil || data == nil {
                return
            }
            
            do {
                
                // Parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                if response.items != nil {
                    
                    DispatchQueue.main.async {
                        
                        self.delegate?.videosFetched(response.items!)
                        
                    }
                    
                }
                
            } catch {
                
            }
            
        }
        
        // Kick off task
        dataTask.resume()
        
    }
}
