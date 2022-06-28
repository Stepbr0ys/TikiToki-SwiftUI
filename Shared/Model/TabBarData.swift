//
//  TabBarData.swift
//  TikiToki (iOS)
//
//  Created by Борис Ларионов on 28.06.2022.
//

import SwiftUI

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
}

var tabItems = [
    TabItem(text: "Learn Now", icon: "house", tab: .home),
    TabItem(text: "Explore", icon: "heart", tab: .likes),
    TabItem(text: "Notifications", icon: "message", tab: .messages),
    TabItem(text: "Library", icon: "person.fill", tab: .profile)
]

enum Tab: String {
    case home
    case likes
    case messages
    case profile
}

