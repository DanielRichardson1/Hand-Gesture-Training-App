//
//  HomeView.swift
//  Hand Gesture Training
//
//  Created by Daniel Richardson on 1/27/25.
//

import SwiftUI

struct HomeView: View {
    
    @State var hostNameInput = ""
    @State var connected = false
    
    func connectToServer() {
        let connectionSuccessful = connectServer(hostName: hostNameInput)
        connected = connectionSuccessful
    }
    
    func toggleConnection() {
        if connected {
            disconnectServer()
            connected = false
        } else {
            connectToServer()
        }
    }
    
    var body: some View {
        NavigationView {
            VStack{
                
                Spacer()
                
                Text("🦾")
                    .font(.system(size: 120, weight: .bold))
                
                Text("EMGenius Inc.")
                    .font(.title2)
                Text("Hand Gesture Training")
                    .font(.headline)
                
                Spacer()
                
                TextField("", text: $hostNameInput)
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        ZStack {
                            Capsule(style: .circular)
                                .fill(.gbGray2)
                                .shadow(radius: 2)
                            if hostNameInput.count == 0 {
                                HStack {
                                    Spacer()
                                    Text("host name here...")
                                        .font(.medium)
                                        .fontWeight(.medium)
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 20)
                                    Spacer()
                                }
                            }
                        }
                    )
                    .onSubmit(connectToServer)
                    .padding(.horizontal)
                
                
                RectangleButton(title: connected ? "Disconnect" : "Connect", textColor: .white, buttonColor1: connected ? .gbRed : .gbLightBlue, buttonColor2: connected ? .gbRedDark : .gbBlue, action: toggleConnection)
                    .padding()
                Spacer()
                    RectangleButton(title: "Calibrate", textColor: .white, buttonColor1: connected ? .gbLightGreen : .gbGray2, buttonColor2: connected ? .gbGreen : .gbGray1)
                        .disabled(!connected)
                }
            }
        }
    }


#Preview {
    HomeView()
}
