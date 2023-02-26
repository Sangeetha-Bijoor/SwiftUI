//
//  RegistrationView.swift
//  ChatWorld
//
//  Created by Sangeetha B on 14/02/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var userName = ""
    @State private var fullName = ""
    @State private var password = ""
    @Environment(\.presentationMode) var mode
    var body: some View {
        VStack {
            
            VStack(alignment:.leading,spacing: 20) {
                
                Text("Get Started")
                    .font(.largeTitle)
                    .bold()
                Text("Create your account")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
                
                //NOTE:Spacing here is spacing between 2 fields
                //NOTE:Use SecureField for passwords
                Spacer()
                CustomTextField(title: $email, isSecureField: false, imageName: "envelope", placeholderText: "Email")
                CustomTextField(title: $userName, isSecureField: false, imageName: "person", placeholderText: "Username")
                CustomTextField(title: $fullName, isSecureField: false, imageName: "person", placeholderText: "Full Name")
                CustomTextField(title: $password, isSecureField: true, imageName: "lock", placeholderText: "Password")
                
                
                Button(action:{
                    print("Sign Up tapped: Email and password entered is \(email),username = \(userName), fullname = \(fullName) and \(password)")
                }, label: {
                    Text("Sign Up")
                        .font(.title2)
                        .frame(width: 320,height: 50)
                        .foregroundColor(.white)
                    
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .padding() //for space between button and password field
                }).padding([.trailing],20)
                    .shadow(color: .gray, radius: 5,x:10.0 ,y: 10.0)
                //NOTE:X and y and shadow dropping positions
            }.padding([.top,],20)
            Spacer() //NOTE:To send all contents  to top and add bttom spacing, if you add this at the top we get top spacing
            VStack {
                Spacer()
                Button(action: {mode.wrappedValue.dismiss()
                    
                }, label: {
                    HStack {
                        Text("Already having a account?")
                            .font(.system(size: 14))
                        Text("Sign In").font(.system(size: 20,weight: .bold))
                        
                    }
                    
                    
                })
            }
            
        }.padding(.leading, 30)
    }
    
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        return RegistrationView()
    }
}
