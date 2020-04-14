//
//  AppView.swift
//  hw2
//
//  Created by 郭垣佑 on 2020/4/14.
//  Copyright © 2020 郭垣佑. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            SongList()
                .tabItem {
                    Image(systemName: "music.house.fill")
                    Text("QQ")
            }
            ContentView()
                .tabItem {
                    ExtractedView()
                    Text("photo")
            }
        }
    }
}


struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

struct ExtractedView: View {
    var body: some View {
        Image(systemName: "info.circle.fill")
    }
}
