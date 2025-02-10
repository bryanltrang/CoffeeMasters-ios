//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Bryan Trang on 2/5/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            OrderPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
            InfoPage()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Info")
                }

        }
    }
}




#Preview {
    ContentView()
}
