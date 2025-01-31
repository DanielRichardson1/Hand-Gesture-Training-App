
import SwiftUI

struct CalibrationView: View {
    
    @State var isCollectingData = false
    @State var gestureText = "ayo"
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text(isCollectingData ? "Data Collection" : "Resting Position")
                .font(.title)
                .bold()
                            
            
            
            Text(isCollectingData ? "Please follow the gestures: \(gestureText)" : "Please keep your hand in a resting position for 20 seconds")
                .font(.subheadline)
                .bold()
                .multilineTextAlignment(.center)
                            
            
            Spacer()
            
            Text("✋")
                .font(.system(size: 100, weight: .bold))
            
            Spacer()
            
            Text("Time remanining: ")
                .font(.title3)
                .bold()
            
            Spacer()
            
            Button(action: {
                
                }) {
                    Text(isCollectingData ? "Stop" : "Start")
                        .font(.title3)
                        .bold()
                }
                        
                Spacer()
            
        }
    }
}

#Preview {
    CalibrationView()
}
