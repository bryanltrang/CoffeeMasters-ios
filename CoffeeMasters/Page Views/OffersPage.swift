//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Bryan Trang on 2/6/25.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView {
            List {
                Offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
            }.navigationTitle("Offers")
        }
    }
}

#Preview {
    OffersPage()
}
