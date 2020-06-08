//
//  LogINView.swift
//  SwiftUI-POC
//
//  Created by Rajshekar on 05/06/20.
//  Copyright © 2020 Sourcebits. All rights reserved.
//

import SwiftUI

struct LogINView: View {
    
    // MARK: - Propertiers
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
       VStack() {
            Text("iOS SwiftUI Template")
                .font(.largeTitle).foregroundColor(Color.white)
                .padding([.top, .bottom], 40)
                .shadow(radius: 10.0, x: 20, y: 10)
            
            Image("logo")
                .resizable()
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10.0, x: 20, y: 10)
                .padding(.bottom, 50)
            
            VStack(alignment: .leading, spacing: 15) {
                TextField("Email", text: self.$email)
                    .padding()
                    .background(Color.themeTextField)
                    .cornerRadius(20.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
                
                SecureField("Password", text: self.$password)
                    .padding()
                    .background(Color.themeTextField)
                    .cornerRadius(20.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
            }.padding([.leading, .trailing], 27.5)
            
            Button(action: {}) {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.gray)
                    .cornerRadius(15.0)
                    .shadow(radius: 10.0, x: 20, y: 10)
            }.padding(.top, 50)
            
            Spacer()
            HStack(spacing: 0) {
                Text("Don't have an account? ")
                Button(action: {}) {
                    Text("Sign Up")
                        .foregroundColor(.black)
                }
            }
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [.red, .white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all))

    }
}

struct LogINView_Previews: PreviewProvider {
    static var previews: some View {
        LogINView()
    }
}
extension Color {
    static var themeTextField: Color {
        return Color(.white)
    }
}
