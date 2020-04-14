//
//  EditPhotoView.swift
//  hw2
//
//  Created by 郭垣佑 on 2020/4/13.
//  Copyright © 2020 郭垣佑. All rights reserved.
//

import SwiftUI

struct EditPhotoView: View {
   var body: some View {
      VStack {
         Text("airplay")
         Image(systemName: "airplayvideo")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
            .navigationBarTitle(Text("title"),   displayMode: .inline)
      }
   }
}

struct EditPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        EditPhotoView()
    }
}
