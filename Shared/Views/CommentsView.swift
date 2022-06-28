//
//  CommentsView.swift
//  TikiToki (iOS)
//
//  Created by Борис Ларионов on 28.06.2022.
//

import SwiftUI

struct CommentsView: View {
    @State private var commentsCount  = 5
    @State private var isExpanded: Bool = false
    @State private var isLiked = false
    @State private var commentTextField = ""
    @EnvironmentObject var model: Model
    
    
    var body: some View {
        VStack {
            Color.clear
                .frame(height: 30)
            HStack {
                Text("**\(infoAboutVideos[model.indexOfVideo].comments.count)** Comments")
                
                Spacer()
                
                Button {
                    withAnimation (.spring(response: 0.3, dampingFraction: 0.8)) {
                        model.showComments = false
                    }
                } label: {
                    ZStack {
                        Circle()
                            .stroke(.black.opacity(0.4), lineWidth: 1)
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                        Image(systemName: "xmark")
                            .font(.system(size: 8))
                            .foregroundColor(.black.opacity(0.7))
                    }
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 15)
            .offset(y: 7.5)
            
            Divider()
            
            ScrollView {
                ForEach (infoAboutVideos[model.indexOfVideo].comments) { comment in
                    SingleCommentView(comment: comment)
                }
                
                .frame(maxWidth: .infinity)
            }
            .frame(height: 350)
            
            Divider()
            
            HStack {
                HStack {
                    Image(systemName: "face.smiling.fill")
                        .foregroundColor(.pink)
                        .font(.system(size: 20))
                    
                    Text("@")
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    
                    TextField("Send your comment...", text: $commentTextField)
                        .font(.system(size: 14))
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .frame(height: 40)
                        .foregroundColor(.gray.opacity(0.15))
                )
                
                Button {
                    
                } label: {
                    ZStack {
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.164))
                        
                        Image(systemName: "message.fill")
                            .foregroundColor(.white)
                    }
                }
            }
            .padding(.horizontal)
            
            Color.clear
                .frame(height: 40)
            
        }
        .frame(height: 500)
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
            .environmentObject(Model())
    }
}
