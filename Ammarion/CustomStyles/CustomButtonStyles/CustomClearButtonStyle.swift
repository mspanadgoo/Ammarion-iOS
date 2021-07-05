//
//  CustonClearButton.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/14/1400 AP.
//

import SwiftUI

struct CustomClearButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, minHeight: 40.0, maxHeight: 40.0, alignment: .center)
            .background(configuration.isPressed ? Color.white.opacity(0.5)  : Color.clear)
            .foregroundColor(Color.white)
            .cornerRadius(10.0)
            .overlay(RoundedRectangle(cornerRadius: 10.0)
                        .stroke(Color.white, lineWidth: 1)
            )
            .padding(.horizontal)
    }
}
