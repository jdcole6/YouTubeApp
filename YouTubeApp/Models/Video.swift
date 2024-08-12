//
//  Video.swift
//  YouTubeApp
//
//  Created by Jack Cole on 6/30/24.
//

import Foundation

struct Video: Decodable, Identifiable {
    
    var id: String
    var snippet: Snippet?
    
}

struct Snippet: Decodable {
    
    var title: String
    var description: String
    var thumbnails: Thumbnails?
    var resourceId: ResourceId?
}

struct ResourceId: Decodable {
    
    var videoId: String
}

struct Thumbnails: Decodable {
    
    var medium: ThumbnailSize?
    
}

struct ThumbnailSize: Decodable {
    
    var url: String
    var width: Int
    var height: Int
}

/*
    enum CodingKeys: String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId
        
    }
    
    init (from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        // Parse title
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        
        // Parse description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        // Parse publish date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        // Parse thumbnails
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        // Parse video ID
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
        
    }
 
 */
