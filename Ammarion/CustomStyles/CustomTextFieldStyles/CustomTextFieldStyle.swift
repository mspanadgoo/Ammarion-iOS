//
//  CustomTextFieldStyle.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/14/1400 AP.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(maxWidth: .infinity, minHeight: 40.0, maxHeight: 40.0)
            .frame(height: 40.0)
            .multilineTextAlignment(TextAlignment.center)
            .padding(.horizontal)
    }
}
