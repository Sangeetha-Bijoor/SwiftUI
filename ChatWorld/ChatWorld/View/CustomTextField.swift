//
//  CustomTextField.swift
//  ChatWorld
//
//  Created by Sangeetha B on 19/02/23.
//

import SwiftUI

struct CustomTextField: View {
    
    @Binding var title: String
    var isSecureField: Bool
    var imageName: String
    var placeholderText: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20.0, height: 20.0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    
                if isSecureField {
                    SecureField(placeholderText,text: $title)
                } else {
                    TextField(placeholderText,text: $title)
                }
               
            }
            Divider()
                .background(Color(.black)).padding([.top],10)
        }
    }
}
