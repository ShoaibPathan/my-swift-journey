//
//  Home.swift
//  SignInSignUp
//
//  Created by Luan Nguyen on 09/12/2020.
//

import SwiftUI

struct Home: View {
    // MARK: - PROPERTIES
    @State var index = 0
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Image("logo")
            .resizable()
            .frame(width: 200, height: 180)
            
            HStack {
                Button(action: {
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                       self.index = 0
                    }
                }) {
                    Text("Existing")
                        .foregroundColor(self.index == 0 ? .black : .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                }
                .background(self.index == 0 ? Color.white : Color.clear)
                .clipShape(Capsule())
                
                Button(action: {
                   withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                      self.index = 1
                   }
                }) {
                    Text("New")
                        .foregroundColor(self.index == 1 ? .black : .white)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                }
                .background(self.index == 1 ? Color.white : Color.clear)
                .clipShape(Capsule())
            } //: HSTACK
            .background(Color.black.opacity(0.1))
            .clipShape(Capsule())
            .padding(.top, 25)
            
            // MARK: - SIGN IN / SIGN UP
            if self.index == 0 {
                Login()
            }
            else {
                SignUp()
            }
            
            // MARK: - FORGET PASSWORD IS VISIBLE WHEN SIGN IN
            if self.index == 0 {
                Button(action: {
                }) {
                    Text("Forget Password?")
                        .foregroundColor(.white)
                }
                .padding(.top, 20)
            }
            
            HStack(spacing: 15) {
                Color.white.opacity(0.7)
                .frame(width: 35, height: 1)
                
                Text("Or")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Color.white.opacity(0.7)
                .frame(width: 35, height: 1)
            } //: HSTACK
            .padding(.top, 10)
            
            HStack {
                Button(action: {
                }) {
                    Image("fb")
                        .renderingMode(.original)
                        .padding()
                }
                .background(Color.white)
                .clipShape(Circle())
                
                Button(action: {
                }) {
                    Image("google")
                        .renderingMode(.original)
                        .padding()
                }
                .background(Color.white)
                .clipShape(Circle())
                .padding(.leading, 25)
            } //: HSTACK
            .padding(.top, 10)
        } //: VSTACK
        .padding()
    }
}

// MARK: - PREVIEW
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
