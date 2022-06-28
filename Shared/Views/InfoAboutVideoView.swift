//
//  InfoAboutVideoView.swift
//  TikiToki (iOS)
//
//  Created by Борис Ларионов on 27.06.2022.
//

import SwiftUI

struct InfoAboutVideoView: View {
    var likesCount = 0
    var commentsCount = 0
    @State private var isLiked = false
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack (spacing: 25) {
            Button  {
                isLiked.toggle()
            } label: {
                VStack (spacing: 7) {
                    Image(systemName: "heart.fill")
                        .foregroundColor(isLiked ? .red : .white)
                        .font(.title2.weight(.semibold))
                    Text("\(likesCount)")
                        .foregroundColor(.white)
                        .font(.title2.weight(.semibold))
                }
            }
            
            Button {
                withAnimation (.spring(response: 0.3, dampingFraction: 0.8)) {
                    model.showComments = true
                }
            } label: {
                VStack (spacing: 7) {
                    Image(systemName: "bubble.right.fill")
                        .foregroundColor(.white)
                        .font(.title2.weight(.semibold))
                    Text("\(commentsCount)")
                        .foregroundColor(.white)
                        .font(.title2.weight(.semibold))
                }
            }
            
            Button {
                
            } label: {
                VStack (spacing: 7) {
                    Image(systemName: "link")
                        .foregroundColor(.white)
                        .font(.title2.weight(.semibold))
                    Text("Share")
                        .foregroundColor(.white)
                        .font(.title2.weight(.semibold))
                }
            }
        }
    }
}

struct InfoAboutVideoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoAboutVideoView()
            .background(.black)
    }
}
