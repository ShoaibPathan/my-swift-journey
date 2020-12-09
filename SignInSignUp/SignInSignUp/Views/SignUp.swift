//
//  SignUp.swift
//  SignInSignUp
//
//  Created by Luan Nguyen on 09/12/2020.
//

import SwiftUI

struct SignUp: View {
    // MARK: - PROPERTIES
    @State var mail = ""
    @State var pass = ""
    @State var repass = ""
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VStack {
                HStack(spacing: 15) {
                    Image(systemName: "envelope")
                        .foregroundColor(.black)
                    TextField("Enter Email Address", text: self.$mail)
                } //: HSTACK
                .padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15) {
                    Image(systemName: "lock")
                    .resizable()
                    .frame(width: 15, height: 18)
                    .foregroundColor(.black)

                    SecureField("Password", text: self.$pass)
                    
                    Button(action: {
                    }) {
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                    }
                } //: HSTACK
                .padding(.vertical, 20)
                
                Divider()
                
                HStack(spacing: 15) {
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 15, height: 18)
                        .foregroundColor(.black)
                    
                    SecureField("Re-Enter", text: self.$repass)
                    
                    Button(action: {
                    }) {
                        Image(systemName: "eye")
                            .foregroundColor(.black)
                    }
                } //: HSTACK
                .padding(.vertical, 20)
            } //: VSTACK
            .padding(.vertical)
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top, 25)
            
            Button(action: {
            }) {
                Text("SIGNUP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
            }
            .background(
                LinearGradient(gradient: .init(colors: [Color("Color2"),Color("Color1"),Color("Color")]), startPoint: .leading, endPoint: .trailing)
            )
            .cornerRadius(8)
            .offset(y: -40)
            .padding(.bottom, -40)
            .shadow(radius: 15)
        } //: VSTACK
    }
}

// MARK: - PREVIEW
struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
