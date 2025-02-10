//
//  Category.swift
//  CoffeeMasters
//
//  Created by Bryan Trang on 2/8/25.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
}
