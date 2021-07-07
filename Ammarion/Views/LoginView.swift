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
    
    @State var presentingSignInView = false
    @State var presentingSignUpView = false

    var body: some View {
        ZStack {
            backgroundGradient
                .frame(maxWidth: .infinity, maxHeight: .infinity).ignoresSafeArea()

            VStack(spacing: 20.0) {
                Spacer()
                
                Button("ورود") {
                    print("SignIn button tapped.")
                    presentingSignInView.toggle()
                }
                .sheet(isPresented: $presentingSignInView) { SignInView() }
                .padding(.horizontal).buttonStyle(CustonWhiteButtonStyle())
                
                Button("ثبت نام") {
                    print("SignUp button tapped.")
                    presentingSignUpView.toggle()
                }
                .sheet(isPresented: $presentingSignUpView) { SignUpView() }
                .padding(.horizontal).buttonStyle(CustomClearButtonStyle())
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
