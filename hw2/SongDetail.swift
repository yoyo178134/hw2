//
//  SongDetail.swift
//  hw2
//
//  Created by 郭垣佑 on 2020/4/14.
//  Copyright © 2020 郭垣佑. All rights reserved.
//

import SwiftUI

struct SongDetail: View {
    var song:Song
    @State private var show = false
    var body: some View {
        VStack {
            HStack {
                Text(song.singer)
                Text(song.name)
                }.animation(nil)
            .font(.largeTitle)
            if show{
                Image(song.name)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .clipped()
                .transition(.opacity)
            }else{
                Image(song.name).hidden()
            }
            Text(song.lyrics)
                .padding()
            .animation(nil)
        }
        .animation(.easeInOut(duration: 5))
        .onAppear {
        self.show = true
        }
    }
}

struct SongDetail_Previews: PreviewProvider {
    static var previews: some View {
        SongDetail(song: songs[0])
    }
}
