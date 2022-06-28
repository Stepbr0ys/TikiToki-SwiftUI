//
//  TabBarView.swift
//  TikiToki (iOS)
//
//  Created by Борис Ларионов on 27.06.2022.
//

import SwiftUI

struct TabBarView: View {
    
    @AppStorage("selectedTab") var selectedTab : Tab = .home
    @State var color: Color = .teal
    @State var tabItemWidth : CGFloat = 0
    
    var body: some View {
        HStack {
            buttons
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .stroke(.white, lineWidth: 1)
                .foregroundColor(.black.opacity(0.5))
                .padding(.horizontal)
        )
        .frame(maxHeight: .infinity, alignment: .bottom)
        .padding(.bottom)
        .frame(width: UIScreen.main.bounds.width)
        .ignoresSafeArea()
    }
    
    var buttons: some View {
        ForEach(tabItems) { item in
            Button {
                withAnimation (.spring(response: 0.3, dampingFraction: 0.7)){
                    selectedTab = item.tab
                }
            } label: {
                VStack (spacing: 0){
                    Image(systemName: item.icon)
                        .frame(width: 44, height: 29)
                        .symbolVariant(.fill)
                        .font(.title2.bold())
                        .foregroundColor(.white)
                    //Text(item.text)
                       // .font(.caption2)
                        //.lineLimit(1)
                }
                .frame(maxWidth: .infinity)
            }
            .foregroundStyle(selectedTab == item.tab ? .secondary : .primary)
            .blendMode(selectedTab == item.tab ? .normal : .overlay)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .background(.gray)
    }
}
