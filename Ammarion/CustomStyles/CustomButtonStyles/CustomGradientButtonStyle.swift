//
//  CustomGradientButtonStyle.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/14/1400 AP.
//

import SwiftUI

struct CustomGradientButtonStyle: ButtonStyle {
    let backgroundGradient = LinearGradient(
        gradient: Gradient(colors: [Color.customThemeGreen, Color.white]),
        startPoint: .leading, endPoint: .trailing)
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, minHeight: 40.0, maxHeight: 40.0, alignment: .center)
            .background(backgroundGradient)
            .foregroundColor(Color.white)
            .cornerRadius(10.0)
            .padding(.horizontal)
    }
}
