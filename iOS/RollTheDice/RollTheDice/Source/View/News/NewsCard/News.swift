//
//  NewsCard.swift
//  RollTheDice
//
//  Created by Subeen on 2/9/24.
//

import Foundation

struct News: Hashable {
    var id: UUID = UUID()
    var title: String
    var date: String
    var image: String
    var content: String
    var isBookmarked: Bool
    
    init(
        title: String = "",
        date: String = "",
        image: String = "",
        content: String = "",
        isBookmarked: Bool = false
    ) {
        self.title = title
        self.date = date
        self.image = image
        self.content = content
        self.isBookmarked = isBookmarked
    }
}
