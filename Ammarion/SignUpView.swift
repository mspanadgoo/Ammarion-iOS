//
//  SignUpView.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/14/1400 AP.
//

import SwiftUI

struct SignUpView: View {
    @State private var email: String = ""
    @State private var mobileNumber: String = ""
    @State private var password: String = ""
    @State private var retypePassword: String = ""

    var body: some View {
        ZStack {
            VStack {
                VStack(spacing: 10.0) {
                    Text("ثبت نام")
                    
                    TextField("ایمیل", text: $email)
                        .textFieldStyle(CustomTextFieldStyle())
                    
                    TextField("شماره موبایل", text: $mobileNumber)
                        .textFieldStyle(CustomTextFieldStyle())

                    TextField("رمز ورود", text: $password)
                        .textFieldStyle(CustomTextFieldStyle())

                    TextField("تایید رمز ورود", text: $retypePassword)
                        .textFieldStyle(CustomTextFieldStyle())

                    Button("ثبت نام") {
                        print("SignUp button tapped.")
                    }
                    .buttonStyle(CustomGradientButtonStyle())
                    
                    Text("سیاست حفظ حریم خصوصی")
                }
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
