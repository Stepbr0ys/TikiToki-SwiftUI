//
//  Model.swift
//  TikiToki (iOS)
//
//  Created by Борис Ларионов on 28.06.2022.
//

import SwiftUI

class Model: ObservableObject {
    @Published var showComments: Bool = false
    @Published var indexOfVideo = 0
}

