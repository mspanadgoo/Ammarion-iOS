//
//  LoginView.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/14/1400 AP.
//

import SwiftUI

struct LoginView: View {
    let backgroundGradient = LinearGradient(
        gradient: Gradient(colors: [Color.white, Color.customThemeGreen]),
        startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        ZStack {
            backgroundGradient
                .frame(maxWidth: .infinity, maxHeight: .infinity).ignoresSafeArea()

            VStack(spacing: 20.0) {
                Spacer()
                
                Button("ورود") {
                    print("SignIn button tapped.")
                }.padding(.horizontal).buttonStyle(CustonWhiteButtonStyle())
                
                Button("ثبت نام") {
                    print("SignUp button tapped.")
                }.padding(.horizontal).buttonStyle(CustomClearButtonStyle())
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
