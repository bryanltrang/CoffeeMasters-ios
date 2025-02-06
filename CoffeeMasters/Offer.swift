//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Bryan Trang on 2/6/25.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    var body: some View {
        VStack {
            Text(title).padding().font(.title)
            Text(description)
        }
    }
}

#Preview {
    Offer(title:"My Offer", description: "This is my description")
}
