//
//  CommentsData.swift
//  TikiToki (iOS)
//
//  Created by Борис Ларионов on 28.06.2022.
//

import SwiftUI

struct Comment: Identifiable {
    var id = UUID()
    var likesCount: Int
    var author: Profile
    var comment: String
}

var commentsForVideo1: [Comment] = [
    Comment(likesCount: 30, author: Profile(name: "StepBroys"), comment: "Sheeeesh 🔥"),
    Comment(likesCount: 17, author: Profile(name: "StepBroys"), comment: "Прекрасно 🌸"),
    Comment(likesCount: 12, author: Profile(name: "StepBroys"), comment: "Утро было вялым, еле как встал с кровати. Одумался - хочу провести день продуктивно ☀️"),
    Comment(likesCount: 1999, author: Profile(name: "StepBroys"), comment: "Ну и что в итоге - это был не финал, и мне нужно ещё одну (вроде) серию подождать 🤥"),
    Comment(likesCount: 69, author: Profile(name: "StepBroys"), comment: "Ну ни**я себе")
]

var commentsForVideo2: [Comment] = [
    Comment(likesCount: 124, author: Profile(name: "StepBroys"), comment: "Sheeeesh 🔥"),
    Comment(likesCount: 523, author: Profile(name: "StepBroys"), comment: "Прекрасно 🌸"),
    Comment(likesCount: 123, author: Profile(name: "StepBroys"), comment: "Утро было вялым, еле как встал с кровати. Одумался - хочу провести день продуктивно ☀️"),
    Comment(likesCount: 25, author: Profile(name: "StepBroys"), comment: "Ну и что в итоге - это был не финал, и мне нужно ещё одну (вроде) серию подождать 🤥"),
    Comment(likesCount: 176, author: Profile(name: "StepBroys"), comment: "Ну ни**я себе"),
    Comment(likesCount: 12, author: Profile(name: "StepBroys"), comment: "Мда... треш🙈")
]

var commentsForVideo3: [Comment] = [
    Comment(likesCount: 17, author: Profile(name: "StepBroys"), comment: "Sheeeesh 🔥"),
    Comment(likesCount: 31, author: Profile(name: "StepBroys"), comment: "Прекрасно 🌸"),
    Comment(likesCount: 62, author: Profile(name: "StepBroys"), comment: "Утро было вялым, еле как встал с кровати. Одумался - хочу провести день продуктивно ☀️"),
    Comment(likesCount: 272, author: Profile(name: "StepBroys"), comment: "Ну и что в итоге - это был не финал, и мне нужно ещё одну (вроде) серию подождать 🤥"),
    Comment(likesCount: 457, author: Profile(name: "StepBroys"), comment: "Ну ни**я себе"),
    Comment(likesCount: 126, author: Profile(name: "StepBroys"), comment: "Мда... треш🙈"),
    Comment(likesCount: 12, author: Profile(name: "StepBroys"), comment: "Первый!")
]
