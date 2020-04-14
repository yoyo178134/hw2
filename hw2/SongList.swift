//
//  SongList.swift
//  hw2
//
//  Created by 郭垣佑 on 2020/4/14.
//  Copyright © 2020 郭垣佑. All rights reserved.
//

import SwiftUI

struct SongList: View {
    var body: some View {
        NavigationView {
            List{
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(songs.indices) { (item) in
                            NavigationLink(destination: SongDetail(song:
                                songs[item])) {
                                    Image(songs[item].name)
                                        .renderingMode(.original)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 200)
                                        .clipped()
                            }
                        }
                    }
                    .frame(height: 200)
                }
                
                ForEach(songs.indices) { (item) in
                    NavigationLink(destination: SongDetail(song:
                        songs[item])) {
                            songRow(song: songs[item])
                    }
                    
                }
            }
            .navigationBarTitle("QQ")
        }
        
    }
}


struct SongList_Previews: PreviewProvider {
    static var previews: some View {
        SongList()
    }
}
