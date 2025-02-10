//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Bryan Trang on 2/8/25.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
}
