//
//  ContentView.swift
//  YouTubeApp
//
//  Created by Jack Cole on 6/28/24.
//

import SwiftUI

struct StartView: View {
    
    var model = Model()
    
    init() {
        model.getVideos()
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        
        var i = 0
    }
    
}

#Preview {
    StartView()
}

