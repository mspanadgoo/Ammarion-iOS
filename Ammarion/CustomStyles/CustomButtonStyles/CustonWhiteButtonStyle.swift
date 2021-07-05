//
//  CustomWhiteButton.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/14/1400 AP.
//

import SwiftUI

struct CustonWhiteButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, minHeight: 40.0, maxHeight: 40.0, alignment: .center)
            .background(configuration.isPressed ? Color.white.opacity(0.5) : Color.white)
            .foregroundColor(Color.customThemeGreen)
            .cornerRadius(10.0)
            .padding(.horizontal)
    }
}
