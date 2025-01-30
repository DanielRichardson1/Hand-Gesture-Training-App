import Foundation
import Combine

class TimerViewModel: ObservableObject {
    @Published var currentTime: String = "00:00:00"
    private var timerModel: TimerModel
    private var cancellables = Set<AnyCancellable>()
    var displaySeconds: Bool = false
    
    init(seconds: TimeInterval, displaySeconds: Bool = false) {
        timerModel = TimerModel(seconds: seconds)
        self.displaySeconds = displaySeconds
        timerModel.currentTimePublisher
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newTime in
                self?.updateTimeString(newTime: newTime)
            }
            .store(in: &cancellables)
        self.updateTimeString(newTime: seconds)
    }
    
    func startTimer() {
        timerModel.startTimer()
    }
    
    func stopTimer() {
        timerModel.stopTimer()
    }
    
    func resetTimer() {
        timerModel.resetTimer()
    }
    
    func setTime(seconds: TimeInterval) {
        timerModel.setTime(seconds: seconds)
    }
    
    private func updateTimeString(newTime: TimeInterval) {
        if displaySeconds {
            currentTime = String(format: "%.0f", newTime)
        } else {
            let totalSeconds = Int(newTime)
            let hours = totalSeconds / 3600
            let minutes = (totalSeconds % 3600) / 60
            let seconds = totalSeconds % 60
            currentTime = String(format: "%02d:%02d:%02d", hours, minutes, seconds)
        }
    }
}
