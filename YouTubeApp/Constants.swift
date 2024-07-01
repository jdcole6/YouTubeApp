//
//  Constants.swift
//  YouTubeApp
//
//  Created by Jack Cole on 6/30/24.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyD2WT6D2KDoaUUuivX2f79xbwFWIg3lNpo"
    static var PLAYLIST_ID = "PLMRqhzcHGw1aLoz4pM_Mg2TewmJcMg9ua"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"

}
