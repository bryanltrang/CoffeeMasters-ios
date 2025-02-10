//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Bryan Trang on 2/8/25.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
    
    
    func add(product: Product, quantity: Int) {
        self.cart.append( (product, quantity) )
    }
    
    func remove(product: Product) {
        self.cart.removeAll { productInCart in
            return productInCart.0.id==product.id
        }
    }
    
}
