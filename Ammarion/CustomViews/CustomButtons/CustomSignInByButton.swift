//
//  CustomSignInByButton.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/14/1400 AP.
//

import SwiftUI

struct CustomSignInByButton: View {
    
    enum SignInByType {
        case facebook
        case google
        case email
    }
    
    let signInType: SignInByType
    let action: () -> Void
    
    var body: some View {
        switch signInType {
        case .google:
            Button(action: action) {
                HStack(alignment: .center, spacing: 5.0) {
                    Image(systemName: "star.fill")
                        .padding(.leading, 10.0)
                    
                    Spacer()
                    
                    Text("ورود با گوگل")
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image(systemName: "star.fill")
                        .padding(.trailing, 10.0)
                        .hidden()
                    
                }
            }
            .frame(maxWidth: .infinity, minHeight: 30.0, maxHeight: 30.0, alignment: .center)
            .background(Color.red)
            .foregroundColor(Color.white)
            .cornerRadius(10.0)
            .padding(.horizontal)
            
        case .email:
            Button(action: action) {
                HStack(alignment: .center, spacing: 5.0) {
                    Image(systemName: "star.fill")
                        .padding(.leading, 10.0)
                    
                    Spacer()
                    
                    Text("ورود با ایمیل")
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image(systemName: "star.fill")
                        .padding(.trailing, 10.0)
                        .hidden()
                    
                }
            }
            .frame(maxWidth: .infinity, minHeight: 30.0, maxHeight: 30.0, alignment: .center)
            .background(Color.green)
            .foregroundColor(Color.white)
            .cornerRadius(10.0)
            .padding(.horizontal)
        case .facebook:
            Button(action: action) {
                HStack(alignment: .center, spacing: 5.0) {
                    Image(systemName: "star.fill")
                        .padding(.leading, 10.0)
                    
                    Spacer()
                    
                    Text("ورود با فیسبوک")
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image(systemName: "star.fill")
                        .padding(.trailing, 10.0)
                        .hidden()
                    
                }
            }
            .frame(maxWidth: .infinity, minHeight: 30.0, maxHeight: 30.0, alignment: .center)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10.0)
            .padding(.horizontal)
        }
    }
}
