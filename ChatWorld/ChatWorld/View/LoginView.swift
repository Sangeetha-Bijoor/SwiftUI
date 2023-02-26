//
//  LoginView.swift
//  ChatWorld
//
//  Created by Sangeetha B on 14/02/23.
//

import SwiftUI
//11:10 - 11:27
//10:40 -11:01
//NOTE: cmd+ click on VStack -> embed in Vstack and rename to NavigationView
struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                
                VStack(alignment:.leading,spacing: 20) {
                    Text("Hello!!!")
                        .font(.largeTitle)
                        .bold()
                    Text("Welcome Back!!!!")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.blue)
        
                    //NOTE:Spacing here is spacing between 2 fields
                    //NOTE:Use SecureField for passwords
                    Spacer()
                    CustomTextField(title: $email, isSecureField: false, imageName: "envelope", placeholderText: "Email")
                    CustomTextField(title: $password, isSecureField: true, imageName: "lock", placeholderText: "Password")
                    
                  
                    Button(action:{
                        print("SignIn tapped: Email and password entered is \(email) and \(password)")
                    }, label: {
                        Text("Sign In")
                            .font(.title2)
                            .frame(width: 320,height: 50)
                            .foregroundColor(.white)
                            
                            .background(Color.blue)
                            .clipShape(Capsule())
                            .padding() //for space between button and password field
                    }).padding([.trailing],20)
                        .shadow(color: .gray, radius: 5,x:10.0 ,y: 10.0)
                    //NOTE:X and y and shadow dropping positions
                    
                    HStack {
                        Spacer()
                        NavigationLink {
                            Text("Reset Pasword")
                        } label: {
                            Text("Forgot Password").padding(.trailing,14).bold().font(.title3)
                        }
                    }
                }.padding([.top,],20)
                Spacer() //NOTE:To send all contents  to top and add bttom spacing, if you add this at the top we get top spacing
                VStack {
                    Spacer()
                    NavigationLink {
                        
                        RegistrationView().navigationBarBackButtonHidden(true)
                    } label: {
                        HStack {
                            Text("Don't have an account?")
                                .font(.system(size: 14))
                            Text("Sign Up").font(.system(size: 20,weight: .bold))
                            
                        }
                        
                        
                    }
                }
               
            }.padding(.leading, 30)
        }.padding([.leading,.top],10)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews : some View {
        LoginView()
    }
}
