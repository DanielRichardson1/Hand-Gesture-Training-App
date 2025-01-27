//
// RectangleButton.swift
// GymBull
//
// Created by Daniel Richardson on 1/20/25.
//

import SwiftUI

struct RectangleButton: View {
    
    var title: String
    var textColor: Color
    var buttonColor1: Color
    var buttonColor2: Color
    var action : () -> Void = { }
    
    
    var body: some View {
        Button {
            HapticManager.triggerHapticFeedback(style: .heavy, intensity: 1)
            action()
        } label: {
            Text(title)
                .font(.medium)
                .fontWeight(.bold)
                .foregroundStyle(textColor)
                .padding()
        }
        .buttonStyle(DepthButtonStyle(foregroundColor: buttonColor1, backgroundColor: buttonColor2, cornerRadius: 20))
        .frame(maxWidth: .infinity, maxHeight: 20)
        .shadow(radius: 2)
        .padding()
    }
}
