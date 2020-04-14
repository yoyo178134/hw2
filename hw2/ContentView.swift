//
//  ContentView.swift
//  hw2
//
//  Created by 郭垣佑 on 2020/4/13.
//  Copyright © 2020 郭垣佑. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let names = [["以後別做朋友", "如果雨之後"], ["你,好不好", "怎麼了"]]
    var columnCount = 2
    let photoWidth = (UIScreen.main.bounds.size.width - 10) / 2
    var body: some View {
        List {
            ForEach(names.indices) { (row) in
                HStack(spacing:10) {
                    ForEach(self.names[row].indices) { (column) in
                        Image(self.names[row][column])
                            .resizable()
                            .padding()
                            .scaledToFill()
                            .frame(width: self.photoWidth, height: self.photoWidth)
                            .clipped()
                    }
                }
            }
            .listRowInsets(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
        }
        .onAppear {
            UITableView.appearance().separatorColor = .clear
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


