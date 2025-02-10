//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Bryan Trang on 2/8/25.
//

import SwiftUI

struct OrderItem: View {
    
    var item: (Product, Int)
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        HStack {
            Text("\(item.1)x")
            Text(item.0.name)
            Spacer()
            Text("$ \(Double(item.1) * item.0.price, specifier: "%.2f")")
            Image(systemName: "trash").padding(.leading).foregroundColor(Color("Secondary")).onTapGesture {
                cartManager.remove(product: item.0)
              }
        }
        }
    }


#Preview {
    OrderItem(item: (Product(id: 1, name: "Dummy", description: "test description", price: 10.23, image: ""), 2))
}
