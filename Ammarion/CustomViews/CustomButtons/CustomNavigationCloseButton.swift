//
//  CustomNavigationCloseButton.swift
//  Ammarion
//
//  Created by Mohammad Sadegh Panadgoo on 4/16/1400 AP.
//

import SwiftUI

struct CustomNavigationCloseButton: View {
    let action: () -> Void
    
    var body: some View {
        Button("╳", action: action).foregroundColor(Color.customThemeGreen)
    }
}
