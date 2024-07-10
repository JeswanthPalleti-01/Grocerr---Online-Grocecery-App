//
//  Tabbar.swift
//  Grocerr
//
//  Created by Jeswanth Palleti on 20/06/24.
//

import SwiftUI

struct Tabbar: View {
    @State var selectedTab: Int = 0

    var body: some View {
            TabView{
                
                Shop()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Shop")
                            .fontWeight(.semibold)
                    }
                    .tag("0")
                Cart()
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Cart")
                            .fontWeight(.semibold)
                    }
                    .tag("1") 
                Profile()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                            .fontWeight(.semibold)
                    }
            }
            
            .accentColor(.black)
            .navigationBarBackButtonHidden(true)
        }
}

#Preview {
    Tabbar()
}
