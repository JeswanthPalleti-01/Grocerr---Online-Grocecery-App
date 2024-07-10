//
//  Profile.swift
//  Grocerr
//
//  Created by Jeswanth Palleti on 21/06/24.
//

import SwiftUI

struct Profile: View {
    @State var showAlert2: Bool = false
    
    @State var loggingOut : Bool = false
    var body: some View {
        
        
        NavigationStack {
            VStack(spacing: 0){
                ZStack{
                    Image("bg")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.1)
                        .frame(height: 300)
                    
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame( width: 200,height: 200)
                        .padding(.bottom,80)
                    
                    
                    
                    Text ("Profile Settings")
                        .font(.system(size: 25 , weight: .bold))
                        .padding(.top, 205)
                }
                
                Spacer()
                List{
                    Button(){
                        
                    }label: {
                        HStack{
                            Text("My Orders")
                                .font(.system(size: 20, design: .rounded))
                            Spacer()
                            Image(systemName: "cart")
                        }
                        .frame(height: 40)
                    }
                    Button(){
                        
                    }label: {
                        HStack{
                            Text("Favourites")
                                .font(.system(size: 20, design: .rounded))
                            Spacer()
                            Image(systemName: "heart")
                        }
                        .frame(height: 40)
                    }
                    Button(){
                        
                    }label: {
                        HStack{
                            Text("Credits and Coupons")
                                .font(.system(size: 20, design: .rounded))
                            Spacer()
                            Image(systemName: "creditcard")
                        }
                        .frame(height: 40)
                    }
                    Button(){
                        
                    }label: {
                        HStack{
                            Text("Shipping Address")
                                .font(.system(size: 20, design: .rounded))
                            Spacer()
                            Image(systemName: "location")
                        }
                        .frame(height: 40)
                    }
                    Button(action:{
                       showAlert2.toggle()
                    },label: {
                        HStack{
                            Text("Logout")
                                .font(.system(size: 20, design: .rounded))
                            Spacer()
                            Image(systemName: "power")
                        }
                        .frame(height: 40)
                        .navigationDestination(isPresented: $loggingOut){
                            ContentView()
                            
                        }
                        
                        .alert(isPresented: $showAlert2, content: {
                            Alert(title: Text( "Are you sure you want to Log Out ?"), primaryButton: .destructive(Text("Continue"), action: {
                                loggingOut.toggle()
                            }), secondaryButton: .cancel())
                        })
                    }
                           
                    )}
                
                
                
                .accentColor(.black)
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    Button(action:{
                        // todo
                    },label: {
                        Image(systemName: "gear")
                            .accentColor(.black)
                            .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                    })
                }
            }
            
        }
        
    }
}
    


#Preview {
    Profile()
}
