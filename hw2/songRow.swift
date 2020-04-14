//
//  songRow.swift
//  hw2
//
//  Created by 郭垣佑 on 2020/4/14.
//  Copyright © 2020 郭垣佑. All rights reserved.
//

import SwiftUI

struct songRow: View {
    let song:Song
    var body: some View {
        HStack {
            Image(song.name)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
            VStack(alignment: .leading) {
                Text(song.name)
                Text(song.singer)
            }
            Spacer()
        }
    }
}

struct songRow_Previews: PreviewProvider {
    static var previews: some View {
        songRow(song: songs[0])
            .previewLayout(.sizeThatFits)
    }
}
