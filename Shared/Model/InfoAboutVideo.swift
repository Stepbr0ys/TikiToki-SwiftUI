//
//  InfoAboutVideo.swift
//  TikiToki (iOS)
//
//  Created by Борис Ларионов on 28.06.2022.
//

import SwiftUI

struct InfoAboutVideo: Identifiable {
    var id: Int
    var likesCount: Int
    var video: String //JustForDemo
    var author: Profile
    var description: String
    var comments: [Comment]
}

var infoAboutVideos = [
    InfoAboutVideo(id: 0, likesCount: 20, video: "Video 1", author: Profile(name: "StepBroys"), description: "SDFdfkvjndfjknvjkdfnvjk sadas dsjunjk dsvujnks vfdkjtm dsfklmre", comments: commentsForVideo1),
    InfoAboutVideo(id: 1, likesCount: 1245, video: "Video 2", author: Profile(name: "StepBroys"), description: "klmklvdf dklsmfklds vfdkvmdskl saklmfdsl", comments: commentsForVideo2),
    InfoAboutVideo(id: 2, likesCount: 253, video: "Video 3", author: Profile(name: "StepBroys"), description: "sdfkmv dskmlkd dskvmlrke; dkmlks kdsmflksd jnfdv", comments: commentsForVideo3)
]
