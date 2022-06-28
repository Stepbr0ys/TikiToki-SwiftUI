//
//  NavigationBarView.swift
//  TikiToki (iOS)
//
//  Created by Борис Ларионов on 27.06.2022.
//

import SwiftUI

struct NavigationBarView: View {
    
    @State private var navBarWidth: CGFloat = 230
    @State private var selectedPage: selectedPage = .following
    
    var body: some View {
        HStack {
            
            Button {
                
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.gray.opacity(0.5))
                    Image(systemName: "ellipsis")
                        .font(.body.weight(.semibold))
                        .foregroundColor(.white)
                }
            }
            
            Spacer()
            
            navButtons
                .frame(width: navBarWidth)
                .background(
                    ZStack {
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .frame(width: navBarWidth, height: 40)
                            .foregroundColor(.gray.opacity(0.5))
                        
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .frame(width: navBarWidth / 2, height: 35)
                            .foregroundColor(.pink.opacity(0.6))
                            .offset(x: selectedPage == .following ? -((navBarWidth - navBarWidth / 2) / 2 - 4) : ((navBarWidth - navBarWidth / 2) / 2 - 4))
                    }
                )
            
            Spacer()
            
            Button {
                
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.gray.opacity(0.5))
                    
                    Image(systemName: "magnifyingglass")
                        .font(.body.weight(.semibold))
                        .foregroundColor(.white)
                }
            }
        }
        .padding(.horizontal)
        .frame(maxHeight: .infinity, alignment: .top)
        .frame(width: UIScreen.main.bounds.width)
    }
    
    var navButtons: some View {
        HStack {
            Button  {
                withAnimation (.spring(response: 0.3, dampingFraction: 0.8)) {
                    selectedPage = .following
                }
                
            } label: {
                Text("Following")
                    .font(.body.weight(.semibold))
                    .frame(width: navBarWidth / 2)
                    .foregroundColor(.white)
                    .offset(x: 5)
            }
            
            Spacer()
            
            Button  {
                withAnimation (.spring(response: 0.3, dampingFraction: 0.8)) {
                    selectedPage = .forYou
                }
            } label: {
                Text("For you")
                    .font(.body.weight(.semibold))
                    .frame(width: navBarWidth / 2)
                    .offset(x: -5)
                    .foregroundColor(.white)
            }
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .background(.black)
    }
}
