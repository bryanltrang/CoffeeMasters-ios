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
        ZStack{
            Image("CardBackgroundImage").frame(maxWidth:.infinity, maxHeight: 200).clipped()
            VStack {
                Text(title).padding().font(.title).background(Color("CardBackground"))
                Text(description).padding().background(Color("CardBackground"))
            }
        }
    }
}

#Preview {
    Offer(title:"My Offer", description: "This is my description")
}
