//
//  Shop.swift
//  Grocerr
//
//  Created by Jeswanth Palleti on 19/06/24.
//

import SwiftUI

struct Shop: View {
    
    @State var goToCart = false
    
    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var items: [[Any]] = shopItems
    
    var body: some View {
        VStack(spacing: 5) {
            VStack {
                
                Text("Let's order fresh\nitems for you")
                    .font(.system(size: 38, weight: .semibold, design: .rounded))
                    .frame(width: 320, alignment: .leading)
                Spacer().frame(height: 35)
                Text("Fresh Items : ")
                    .frame(width: 320, alignment: .leading)
                    .foregroundColor(.gray)
                    .fontDesign(.rounded)
                    .fontWeight(.semibold)
                
            }.padding(20)
            ScrollView(showsIndicators: false)
                    {
                LazyVGrid(columns: columns, spacing: 15) {
                    ForEach(0..<items.count, id:\.self) { item in
                        ShopItem(imageName: items[item][0] as! String, title: items[item][1] as! String, price: items[item][2] as! Int, color: items[item][3] as! Color, selfIndex: item)
                    }
                }
                .padding(15)
            }
            .navigationDestination(isPresented: $goToCart) {
                Cart()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button() {
                        goToCart = true
                    }label: {
                        Image(systemName: "cart")
                    }
                }
            }
        }
    }
    
    
    struct Shop_Previews: PreviewProvider {
        static var previews: some View {
            Shop()
        }
    }
}
