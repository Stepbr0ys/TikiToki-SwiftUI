//
//  DescriptionOfVideoView.swift
//  TikiToki (iOS)
//
//  Created by Борис Ларионов on 27.06.2022.
//

import SwiftUI

struct DescriptionOfVideoView: View {
    
    @State private var isExpanded: Bool = false
    @State private var isSubscribed: Bool = false
    var author: Profile = Profile(name: "Profile Name")
    var description = "Description"
    
    var body: some View {
        HStack (alignment: .top) {
            Image("Avatar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .mask(Circle())
                .background(
                    Circle()
                        .stroke(.red, lineWidth: 2)
                )
                .overlay(
                    Button {
                        isSubscribed.toggle()
                    } label: {
                        ZStack {
                            Image(systemName: "seal.fill")
                                .foregroundColor(.red)
                            
                            Image(systemName: isSubscribed ? "checkmark" : "plus")
                                .font(.system(size: 9))
                                .foregroundColor(.white)
                            
                        }
                    }
                        .offset(y: 30)
                )
            
            VStack (alignment: .leading, spacing: 8) {
                HStack (spacing: 4) {
                    Text(author.name)
                        .font(.title2.weight(.bold))
                        .foregroundColor(.white)
                    
                    ZStack {
                        Image(systemName: "seal.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 15))
                        
                        Image(systemName: "checkmark")
                            .font(.system(size: 10).weight(.bold))
                            .foregroundColor(.white)
                    }
                    
                }
                
                Text(description)
                    .font(.footnote.weight(.semibold))
                    .foregroundColor(.gray)
                    .frame(width: 180, alignment: .leading)
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
                                    .foregroundColor(.white)
                            }
                            .frame(width: proxy.size.width + 45, height: proxy.size.height, alignment: .bottomTrailing)
                        }
                    )
                
            }
            .frame(width: 220, alignment: .leading)
            
            
        }
    }
}

struct DescriptionOfVideoView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionOfVideoView()
            .background(.black)
    }
}
