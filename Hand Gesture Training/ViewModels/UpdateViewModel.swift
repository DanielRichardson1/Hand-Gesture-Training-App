//
//  UpdateViewModel.swift
//  Hand Gesture Training
//
//  Created by Daniel Richardson on 1/29/25.
//

import SwiftUI
import Combine

class UpdaterViewModel: ObservableObject{
    
    @Published var index: Int = 20
    @Published var gestureIndex: Int = 0
    @Published var isCollectingData: Bool = false
    @Published var isResting: Bool = true
    
    var timer: AnyCancellable?
    
    func startRestingPosition() {
        isCollectingData = false
        isResting = true
        index = 20
    }
    
    func startDataCollection() {
        isCollectingData = true
        isResting = false
        index = 2
        gestureIndex = 0
        startTimer()
    }
    
    func stopTimer() {
        timer?.cancel()
        timer = nil
    }
    
    func startTimer() {
        stopTimer()
        
        timer = Timer.publish(every: 1.0, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                guard let self = self else { return }
                if self.index > 0 {
                    self.index -= 1
                } else {
                    if self.isCollectingData {
                        self.gestureIndex += 1
                        if self.gestureIndex >= 20 {
                            self.stopDataCollection()
                        } else {
                            self.index = 2
                        }
                    } else {
                        self.startDataCollection()
                    }
                }
            }
    }
    
    func stopDataCollection() {
        stopTimer()
        isCollectingData = false
        index = 20
    }
    
    func gestureText() -> String {
        return gestureIndex % 2 == 0 ? "Flexed" : "Relaxed"
    }
    
    func gestureEmoji() -> String {
        return gestureIndex % 2 == 0 ? "✊" : "✋"
        
    }
    
}
