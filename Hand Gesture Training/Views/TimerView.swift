//
//  TimerView.swift
//  Hand Gesture Training
//
//  Created by Daniel Richardson on 1/30/25.
//

import SwiftUI

struct TimerView: View {
    @ObservedObject var timerViewModel = TimerViewModel(seconds: 90, displaySeconds: true)
    
    var body: some View {
        VStack {
            Text(timerViewModel.currentTime)
                .font(.largeTitle)
                .padding()
            
            HStack {
                Button("Start") {
                    timerViewModel.startTimer()
                }
                .padding()
                
                Button("Stop") {
                    timerViewModel.stopTimer()
                }
                .padding()
                
                Button("Reset") {
                    timerViewModel.resetTimer()
                }
                .padding()
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
