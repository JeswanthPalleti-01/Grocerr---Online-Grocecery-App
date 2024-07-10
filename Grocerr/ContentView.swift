//
//  ContentView.swift
//  Grocerr
//
//  Created by Jeswanth Palleti on 18/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var goToSignInPage : Bool = false
    @State var changeScreen : Bool = false
    @State var showAlert: Bool = false
    
    var body: some View {
        NavigationStack(){
            Color.gray.edgesIgnoringSafeArea(.all)
            VStack(spacing: 50) {
                ZStack {
                    Image("bg")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 875, height: 1000, alignment: .center)
                    .opacity(0.08)
                    VStack(spacing: 5){
                        
                        Text("GROCERR")
                            .fontWeight(.heavy)
                            .font(.system(size: 60))
                            .fontDesign(.rounded)
                            .multilineTextAlignment(.center)
                     
                        Image("Image 1")
                            .resizable()
                            .scaledToFit()
                        .frame(width: 300, height: 300)
                        .padding(.bottom,20)
                        
                        Text("We deliver groceries\n at your Doorstep!")
                            .fontWeight(.medium)
                            .font(.system(size: 30))
                            .fontDesign(.rounded)
                            .multilineTextAlignment(.center)
                            .padding(.bottom,20)
                        
                        
                        Button(action: {
                            showAlert.toggle()
//                            changeScreen = true
                        }, label: {
                            
                            ZStack{
                                RoundedRectangle(cornerRadius:50)
                                    .frame(width: 250, height: 60)
                                Text("Get Started")
                                    .foregroundStyle(Color.white)
                                    .fontWeight(.bold)
                                    .fontDesign(.rounded)
                                    
                            }
                            .navigationDestination(isPresented:$changeScreen)
                            {
                                Tabbar()
                            }
                        })
                        .alert(isPresented: $showAlert, content: {
                            Alert(title: Text( "Are you sure you want to continue ?"), message: Text("Click on continue to proceed without logging in"), primaryButton: .destructive(Text("Continue"), action: {
                                changeScreen.toggle()
                            }), secondaryButton: .cancel())
                        })
                        .padding()
                        Button(action:{
                            goToSignInPage.toggle()
                        },label: {
                            ZStack{
                                RoundedRectangle(cornerRadius:50)
                                    .frame(width: 250, height: 60)
                                Text("Login / Signup")
                                    .foregroundStyle(Color.white)
                                    .fontWeight(.bold)
                                    .fontDesign(.rounded)
                                    
                            }
                            .navigationDestination(isPresented: $goToSignInPage){
                                SignInPage()
                            }
                        })
                        HStack{
                            Text("New around here ?")
                            Text("Sign in")
                                .foregroundStyle(Color.red)
                        }
                        .font(.caption)
                    }
                        
                }
                
            }
            .navigationBarBackButtonHidden(true)
            
        }
        
    }
}

#Preview {
    ContentView()
}
