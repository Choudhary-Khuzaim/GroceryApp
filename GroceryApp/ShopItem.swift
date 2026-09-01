//
//  ShopItem.swift
//  GroceryApp
//
//  Created by pc on 10/5/24.
//

import SwiftUI

struct ShopItem: View {
    
    var ImageName: String
    var title: String
    var price: Double
    var color: Color
    var selfIndex: Int
    
    var body: some View {
        ZStack {
            RoundedRectangle (cornerRadius: 15)
                .foregroundColor(color)
                .opacity(0.25)
                .frame(width: 170, height: 230)
            VStack {
                Image (ImageName)
                    .resizable()
                    .frame(width: 80, height: 80)
                Text (title)
                Button() {
                    cartItems.append(shopItems[selfIndex])
                } label: {
                    Text ("$\(String(format: "%.2f" ,price))")
                    .foregroundStyle(.white)
                    .frame(width: 100, height: 40)
                    .background(color)
                }
            }
        }
    }
}

#Preview {
    ShopItem(ImageName: "avocado", title: "Avocado", price: 4.00, color: Color.green, selfIndex: 0)
}
