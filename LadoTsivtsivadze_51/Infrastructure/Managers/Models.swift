//
//  Models.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/13/21.
//

import UIKit

struct Book: Codable {
    var title: String?
    var author: String?
    var summary: String?
    var image: String?
}

struct BookModel {
    
    var book: Book!
    
    var title: String {
        return book.title ?? ""
    }
    
    var author: String {
        return book.author ?? ""
    }
    
    var summary: String {
        return String((book.summary ?? "").prefix(50))
    }
    
    var image: URL {
        return URL(string: book.image ?? "")!
    }
    
    init(using model: Book) {
        book = model
    }
}
