
import SwiftUI

struct CalibrationView: View {
    
    @StateObject var updaterViewModel = UpdaterViewModel()
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text(updaterViewModel.isCollectingData ? "Data Collection" : "Resting Position")
                .font(.title)
                .bold()
                            
            
            
            Text(updaterViewModel.isCollectingData ? "Please follow the gestures: \(updaterViewModel.gestureText())" : "Please keep your hand in a resting position for 20 seconds")
                .font(.subheadline)
                .bold()
                .multilineTextAlignment(.center)
                            
            
            Spacer()
            
            Text(updaterViewModel.isCollectingData ? "\(updaterViewModel.gestureEmoji())" : "✋")
                .font(.system(size: 100, weight: .bold))
            
            Spacer()
            
            Text("Time remanining: \(updaterViewModel.index)")
                .font(.title3)
                .bold()
            
            Spacer()
            
            Button(action: {
                    if updaterViewModel.isCollectingData {
                        updaterViewModel.stopDataCollection()
                    } else {
                        updaterViewModel.startRestingPosition()
                    }
                }) {
                    Text(updaterViewModel.isCollectingData ? "Stop" : "Start")
                        .font(.title3)
                        .bold()
                }
                        
                Spacer()
            
        }
        .onAppear {
            updaterViewModel.startRestingPosition()
        }
    }
}

#Preview {
    CalibrationView()
}
