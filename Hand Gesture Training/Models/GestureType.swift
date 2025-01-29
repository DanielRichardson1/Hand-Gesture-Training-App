//
//  GestureType.swift
//  Hand Gesture Training
//
//  Created by Daniel Richardson on 1/29/25.
//

import SwiftUI

struct GestureType: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var title: String
    var color: Color
}

let sampleTypes: [GestureType] = [
    GestureType(title: "1", color: .mint),
    GestureType(title: "2", color: .brown),
    GestureType(title: "3", color: .gbLightBlue)
]
