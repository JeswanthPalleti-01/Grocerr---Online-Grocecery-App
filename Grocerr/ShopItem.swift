//
//  ShopItem.swift
//  Grocerr
//
//  Created by Jeswanth Palleti on 18/06/24.
//

import SwiftUI

struct ShopItem: View {
    
    var imageName: String
    var title: String
    var price: Int
    var color: Color
    var selfIndex: Int

    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(color)
                .opacity(0.25)
                .frame(width: 170, height: 230)
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                
                Text(title)
                Button(){
                    cartItems.append(shopItems[selfIndex])
                }label: {
                    Text("Rs \(price)")
                        .foregroundColor(.white)
                        .frame(width: 100, height: 40)
                        .background(color)
                }
            }
        }
    }
}

#Preview {
    ShopItem(imageName: "avocado", title: "Avocado", price: 100, color: .green, selfIndex: 0)
}
