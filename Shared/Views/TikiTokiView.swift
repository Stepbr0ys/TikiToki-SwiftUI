//
//  TikiTokiView.swift
//  TikiToki (iOS)
//
//  Created by Борис Ларионов on 28.06.2022.
//

import SwiftUI

struct TikiTokiView: View {
    
    @EnvironmentObject var model: Model
    @State private var selectedIndex = 0
    
    
    var body: some View {
        GeometryReader { proxy in
            
            let size = proxy.size
            
            TabView (selection: $model.indexOfVideo) {
                
                ForEach(Array(infoAboutVideos.enumerated()), id: \.offset) { index, video in
                    absractPlayer
                        
                }
            }
            .rotationEffect(.init(degrees: 90))
            .frame(width: size.height)
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(width: size.width)
            
            
        }
        .ignoresSafeArea()
    }
    
    var absractPlayer: some View {
        ForEach (infoAboutVideos) { video in
            ZStack {
                Image("\(video.video)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                
                LinearGradient(colors: [Color(.black).opacity(0.6), Color(.black).opacity(0)], startPoint: .bottom, endPoint: .top)
                    .mask {
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .frame(width: UIScreen.main.bounds.width + 30, height: 250)
                            .frame(maxHeight: .infinity, alignment: .bottom)
                            .blur(radius: 20)
                    }
                    .offset(y: 20)
                    .ignoresSafeArea()
                    .allowsHitTesting(false)
                
                InfoAboutVideoView(likesCount: video.likesCount, commentsCount: video.comments.count)
                    .shadow(color: .black.opacity(0.6), radius: 10, x: 3, y: 3)
                    .offset(x: UIScreen.main.bounds.width / 2 - 40)
                    .offset(y: UIScreen.main.bounds.height / 6)
                    
                
                DescriptionOfVideoView(author: video.author, description: video.description)
                    .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .padding(.bottom, 100)
                    .shadow(color: .black.opacity(0.6), radius: 10, x: 3, y: 3)
                    //.offset(y: UIScreen.main.bounds.height / 2.8)
                    .padding(.leading, 33) //Just approximately
            }
            .frame(width: UIScreen.main.bounds.width)
            .rotationEffect(.init(degrees: -90))
        }
        .frame(height: UIScreen.main.bounds.height)
        .ignoresSafeArea()
    }
}

struct TikiTokiView_Previews: PreviewProvider {
    static var previews: some View {
        TikiTokiView()
            .environmentObject(Model())
    }
}
