//
//  ContentView.swift
//  YouTubeApp
//
//  Created by Jack Cole on 6/28/24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "play.square.stack")
                    Text("Feed")
                }
        }
        .ignoresSafeArea()

    }
}

#Preview {
    HomeView()
}

