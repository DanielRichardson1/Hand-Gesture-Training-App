//
//  HomeView.swift
//  Hand Gesture Training
//
//  Created by Daniel Richardson on 1/27/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            
            RectangleButton(title: "Start Calibration", textColor: .gbWhite, buttonColor1: .gbPurple, buttonColor2: .gbPurpleDark)
                .padding()
                .padding(.bottom, 20)
            
            RectangleButton(title: "Connect to Device", textColor: .gbWhite, buttonColor1: .gbLightBlue, buttonColor2: .gbBlue, action: {})
                .padding()
            
        }
        
        
    }
}

#Preview {
    HomeView()
}
