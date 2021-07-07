//
//  ConfirmView.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/14/1400 AP.
//

import SwiftUI

struct ConfirmView: View {
    @Environment(\.presentationMode) var presentationMode

    @State private var confirmCode: String = ""
    
    let mobileNumber: String
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    VStack(spacing: 10.0) {
                        Text("احراز هویت")
                            .padding(.bottom, 40.0)
                        
                        Text("لطفاً کد ارسال شده به شماره \(mobileNumber) را وارد نمائید.")
                        
                        TextField("کد تایید", text: $confirmCode)
                            .textFieldStyle(CustomTextFieldStyle())
                        
                        Button("ورود") {
                            print("SignIn button tapped.")
                        }
                        .buttonStyle(CustomGradientButtonStyle())
                        
                        Button("ارسال مجدد کد احراز هویت") {
                            print("SendCodeAgain button tapped.")
                        }
                        .padding(.top, 40.0)
                    }
                }
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    CustomNavigationCloseButton {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(mobileNumber: "09126185482")
    }
}
