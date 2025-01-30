import Foundation
import Combine

class TimerModel {
    private var timer: Timer?
    private var currentTime: TimeInterval
    private var currentTimeSubject = PassthroughSubject<TimeInterval, Never>()
    private var maxTime: TimeInterval
    
    var currentTimePublisher: AnyPublisher<TimeInterval, Never> {
        currentTimeSubject.eraseToAnyPublisher()
    }

    init(seconds: TimeInterval) {
        self.maxTime = seconds
        self.currentTime = seconds
    }
    
    func startTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            self?.countDown()
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
    }
    
    func resetTimer() {
        stopTimer()
        currentTime = self.maxTime
        currentTimeSubject.send(currentTime)
    }
    
    func setTime(seconds: TimeInterval) {
        currentTime = seconds
        currentTimeSubject.send(currentTime)
    }
    
    private func countDown() {
        if currentTime > 0 {
            currentTime -= 1
            currentTimeSubject.send(currentTime)
        } else {
            stopTimer()
        }
    }
    
    func getCurrentTime() -> TimeInterval {
        return currentTime
    }
}
