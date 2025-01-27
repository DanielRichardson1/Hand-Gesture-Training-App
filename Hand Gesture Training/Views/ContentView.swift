//
//  ContentView.swift
//  Hand Gesture Training
//
//  Created by Daniel Richardson on 1/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.background.ignoresSafeArea()
            HomeView()
        }
    }
}

#Preview {
    ContentView().preferredColorScheme(.dark)
}
