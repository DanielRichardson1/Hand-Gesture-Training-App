//
// EllipseButton.swift
// GymBull
//
// Created by Daniel Richardson on 1/20/25.
//

import SwiftUI

struct EllipseButton: View {
    
    var image: String
    var buttonColor1: Color
    var buttonColor2: Color

    var body: some View {
        Button(action: {
            HapticManager.triggerHapticFeedback(style: .soft, intensity: 1)
        }, label: {
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundStyle(.white)
        })
        .buttonStyle(DepthButtonStyle(foregroundColor: buttonColor1, backgroundColor: buttonColor2))
        .frame(width: 80, height: 70)
        .padding()
    }
}
