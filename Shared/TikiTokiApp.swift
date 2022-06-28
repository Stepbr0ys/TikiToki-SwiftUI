//
//  TikiTokiApp.swift
//  Shared
//
//  Created by Борис Ларионов on 27.06.2022.
//

import SwiftUI

@main
struct TikiTokiApp: App {
    @StateObject var model = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
