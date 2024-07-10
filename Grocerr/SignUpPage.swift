//
//  SignUpPage.swift
//  Grocerr
//
//  Created by Jeswanth Palleti on 22/06/24.
//

import SwiftUI


struct SignUpPage: View {
    @State var creatingAccStaringpsge :Bool = false
    @State var textFieldText2 :String = ""
    @State var textFieldText3 :String = ""
    @State var secureFieldText2 :String = ""
    
    var body: some View {
        Image("Image 1")
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
        Spacer()
        VStack {
            Text("CREATE A NEW ACCOUNT")
            
            Text("IN GROCERR")
              
        }  .fontWeight(.heavy)
            .font(.system(size: 25))
            .fontDesign(.rounded)
            .multilineTextAlignment(.center)
            .padding(.vertical,10)
//        Spacer()
        
        VStack (spacing: 20){
            
            TextField("Enter Email Address", text: $textFieldText2)
                    .padding()
                    .background(Color.gray.opacity(0.15).cornerRadius(20))
                .frame(width: .infinity, height: 55)
       
            
            SecureField("Enter the Password", text: $secureFieldText2)
                .padding()
                .background(Color.gray.opacity(0.15).cornerRadius(20))
                .frame(width: .infinity, height: 55)
                
            Button(action:{
                creatingAccStaringpsge.toggle()
            },label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: .infinity, height: 55)
                    Text("Create Account")
                        .foregroundStyle(Color.white)
                        .fontWeight(.bold)
                        .fontDesign(.rounded)
                    
                    Spacer()
                    
                }
                .padding(.vertical,20)
            })
            .navigationDestination(isPresented: $creatingAccStaringpsge){
                Tabbar()
            }
        }
        .padding()
        Spacer()
       
        
        
    }
}

#Preview {
    SignUpPage()
}
