//
//  SignInPage.swift
//  Grocerr
//
//  Created by Jeswanth Palleti on 22/06/24.
//

import SwiftUI

struct SignInPage: View {
    @State var goTOoSignUpPage : Bool = false
    @State var textFieldText : String = ""
    @State var secureFieldText : String = ""
   
    var body: some View {
        
        Spacer()
            Text("SIGN IN")
                .fontWeight(.heavy)
                .font(.system(size: 25))
                .fontDesign(.rounded)
                .multilineTextAlignment(.center)
           
        VStack {
            TextField("Enter Email Address.", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.15).cornerRadius(20))
                .frame(width: .infinity, height: 55)
       
            
            SecureField("Enter the Password", text: $secureFieldText)
                .padding()
                .background(Color.gray.opacity(0.15).cornerRadius(20))
                .frame(width: .infinity, height: 55)
                
            Button(action:{
                
            },label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: .infinity, height: 55)
                    Text("Login")
                        .foregroundStyle(Color.white)
                        .fontWeight(.bold)
                        .fontDesign(.rounded)
                    
                }
                .padding(.vertical)
            })
        }
        .padding()
        Spacer()
        
        Text("OR")
            .font(.system(size: 20 , weight: .semibold))
        Spacer()
        
        VStack (spacing: 20){
            
            
            Button(action:{
                
            },label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.black)
                        .frame(width: .infinity, height: 60)
                    HStack{
                        Text("   Sign in with Apple")
                            .foregroundStyle(Color.white)
                            .fontWeight(.bold)
                            .fontDesign(.rounded)
                            .padding()
                        Spacer()
                        Image("alogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: .infinity, height: 30)
                            .padding()
                            
                        
                    }
                }
            })
            Button(action:{
                
            },label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.black)
                        .frame(width: .infinity, height: 60)
                       
                    
                    HStack{
                        Text("   Sign in with Google")
                            .foregroundStyle(Color.white)
                            .fontWeight(.bold)
                            .fontDesign(.rounded)
                            .padding()
                        Spacer()
                        Image("glogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: .infinity, height: 30)
                            .padding()
                        
                    }
                }
            })
        }
        .padding(.horizontal)

            
            VStack{
                HStack{
                    Text("Dont have an Account? ")
                    Button(action:{
                        goTOoSignUpPage.toggle()
                    },label:{
                        Text("Click Here")
                    })
                    .navigationDestination(isPresented: $goTOoSignUpPage){
                        SignUpPage()
                    }
                }
                .font(.system(size: 16))
                
            }
            .padding()
        }
        
    }


#Preview {
    SignInPage()
}
