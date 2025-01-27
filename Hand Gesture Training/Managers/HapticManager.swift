//
// HapticManager.swift
// GymBull
//
// Created by Daniel Richardson on 1/20/25.
//

import UIKit

class HapticManager {
    static func triggerHapticFeedback(style: UIImpactFeedbackGenerator.FeedbackStyle, intensity: CGFloat) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred(intensity: intensity)
    }
}
