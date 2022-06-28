//
//  ContentView.swift
//  Shared
//
//  Created by Борис Ларионов on 27.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        ZStack {
            Group {
                TikiTokiView()
                
                NavigationBarView()
                
                TabBarView()
            }
            .allowsHitTesting(model.showComments ? false : true)
            
            
            CommentsView()
                .background(.white)
                .cornerRadius(20)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .ignoresSafeArea()
                .offset(y: model.showComments ? 0 : 700)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model())
    }
}
