//
//  SignInView.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/14/1400 AP.
//

import SwiftUI

struct SignInView: View {
    @State private var mobileNumber: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                VStack(spacing: 20.0) {
                    Text("ورود")
                    
                    TextField("شماره موبایل", text: $mobileNumber)
                        .textFieldStyle(CustomTextFieldStyle())
                    
                    Button("ارسال کد") {
                        print("SignIn button tapped.")
                    }
                    .buttonStyle(CustomGradientButtonStyle())
                    
                }
                
                VStack(spacing: 10.0) {
                    CustomDividerView(label: "ورود توسط", horizontalPadding: 20.0)
                    
                    CustomSignInByButton(signInType: .google) {
                        print("SignIn by Google tapped.")
                    }
                    
                    CustomSignInByButton(signInType: .email) {
                        print("SignIn by Email Tapped")
                    }
                    
                    CustomSignInByButton(signInType: .facebook) {
                        print("SignIn by Facebook tapped.")
                    }
                }
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
