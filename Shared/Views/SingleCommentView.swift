//
//  SingleCommentView.swift
//  TikiToki (iOS)
//
//  Created by Борис Ларионов on 28.06.2022.
//

import SwiftUI

struct SingleCommentView: View {
    
    @State private var commentsCount  = 5
    @State private var isExpanded: Bool = false
    var author: Profile = Profile(name: "Profile Name")
    var description = "Description"
    @State private var isLiked = false
    var comment: Comment = Comment(likesCount: 12, author: Profile(name: "StepBroys"), comment: "Утро было вялым, еле как встал с кровати. Одумался - хочу провести день продуктивно ☀️")
    
    var body: some View {
        HStack (alignment: .top) {
            Image("Avatar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .mask(Circle())
            
            VStack (alignment: .leading, spacing: 2) {
                HStack (spacing: 6) {
                    Text(comment.author.name)
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    ZStack {
                        Image(systemName: "seal.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 15))
                        
                        Image(systemName: "checkmark")
                            .font(.system(size: 10).weight(.bold))
                            .foregroundColor(.white)
                    }
                    
                }
                
                Text(comment.comment)
                    .font(.caption)
                    .frame(width: 200, alignment: .leading)
                    .lineLimit(isExpanded ? nil : 2)
                    .overlay(
                        GeometryReader { proxy in
                            Button(action: {
                                isExpanded.toggle()
                            }) {
                                Text(isExpanded ? "Hide" : "See more")
                                    .font(.caption).bold()
                                    .padding(.leading, 8.0)
                                    .padding(.top, 4.0)
                                    .background(Color.clear)
                                    .foregroundColor(.secondary)
                            }
                            .frame(width: proxy.size.width + 45, height: proxy.size.height, alignment: .bottomTrailing)
                        }
                    )
                HStack {
                    Text("12:20")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .frame(width: 40, alignment: .leading)
                        
                    
                    Button  {
                        
                    } label: {
                        Text("Reply")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .frame(width: 50, alignment: .leading)
                    }

                }
                .padding(.top, 10)
                
                
                
            }
            .frame(width: 220, alignment: .leading)
            
            Spacer()
            
            Button {
                isLiked.toggle()
            } label: {
                VStack (spacing: 7) {
                    Image(systemName: "heart.fill")
                        .foregroundColor(isLiked ? .red : .secondary.opacity(0.3))
                        .font(.body.weight(.semibold))
                    Text("\(comment.likesCount)")
                        .foregroundColor(isLiked ? .red : .secondary.opacity(0.3))
                        .font(.body.weight(.semibold))
                }
                .frame(height: 50, alignment: .top)
            }
            
        }
        .padding()
    }
}

struct SingleCommentView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCommentView()
            //.background(.gray.opacity(0.5))
    }
}
