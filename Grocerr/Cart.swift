//
//  Cart.swift
//  Grocerr
//
//  Created by Jeswanth Palleti on 19/06/24.
//

import SwiftUI

struct Cart: View {
    @State var showBottomSheet = false
    @State var totalPrice = 0
    
    var body: some View {
        VStack{
        Text("My Cart")
                .font(.system(size: 45, weight: .semibold , design: .rounded))
                .frame(width: 320,alignment: .leading)
            List{
                ForEach(0..<cartItems.count, id: \.self){
                    item in
                    HStack {
                                         Image(cartItems[item][0] as! String)
                                             .resizable()
                                             .frame(width: 40, height: 40)
                                         VStack(spacing: 5) {
                                             Text(cartItems[item][1] as! String)
                                             Text("Rs \(cartItems[item][2])")
                                                 .foregroundColor(.gray)
                                         }
                                     }
                                 }.onDelete{indexSet in
                                     cartItems.remove(atOffsets: indexSet)
                                    self.calculateTotalPrice()
                                 }
                             }
            Spacer()
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(.green)
                                .opacity(0.8)
                                .frame(width: 350, height: 120)
                            VStack {
                                Text("Total Price")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .frame(width: 350, alignment: .leading)
                                    .padding(.leading, 60)
                                Text("Rs \(totalPrice)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 26, weight: .bold))
                                    .frame(width: 350, alignment: .leading)
                                    .padding(.leading, 60)
                            }
                            Button() {
                                showBottomSheet.toggle()
                                
                            } label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .strokeBorder()
                                        .frame(width: 120, height: 50)
                                        .foregroundColor(.white)
                                    Text("Checkout")
                                        .foregroundColor(.white)
                                        .bold()
                                        
                                }
//
                                .sheet(isPresented: $showBottomSheet){
                                    BottomSheetView()
                                        .presentationDetents([.fraction(0.45)])
                                    
                                }
                            }
                            
                            .offset(x: 80)
                        }.padding(.bottom,20)
                        
                    }.onAppear(perform: self.calculateTotalPrice)
                }
                
                func calculateTotalPrice() {
                    totalPrice = 0
                    for i in 0..<cartItems.count {
                        totalPrice += cartItems[i][2] as! Int
                    }
                }
}


struct
BottomSheetView: View {
    var body: some View {
        VStack{
            Text("Payment")
                .font(.system(size: 30 , weight: .bold))
                .fontDesign(.rounded)
                .foregroundStyle(.black)
                .multilineTextAlignment(.leading)
                .padding(.top,20)
            Spacer()
            
                Button(){
                }label: {
                    ZStack {
                       
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: .infinity, height: 65)
                            .padding(.horizontal)
                       
                        Text("Cash On Delivery")
                            .foregroundStyle(Color.white)
                            .fontDesign(.rounded)
                            .fontWeight(.semibold)
                    }
                }
                    Button(){
                    }label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: .infinity, height: 65)
                                .padding(.horizontal)
                            Text("Credit or Debit Card")
                                .foregroundStyle(Color.white)
                                .fontDesign(.rounded)
                                .fontWeight(.semibold)
                        }
                    }
                    Button(){
                    }label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: .infinity, height: 65)
                                .padding(.horizontal)
                            Text("UPI Payment")
                                .foregroundStyle(Color.white)
                                .fontDesign(.rounded)
                                .fontWeight(.semibold)
                        }
                    }
                Spacer()
            }
        }
    }

    
#Preview {
    Cart()
}
