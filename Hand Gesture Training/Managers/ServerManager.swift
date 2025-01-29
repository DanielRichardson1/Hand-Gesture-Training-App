//
//  ServerManager.swift
//  Hand Gesture Training
//
//  Created by Daniel Richardson on 1/27/25.
//

import CocoaMQTT

var mqttClient: CocoaMQTT?

func connectServer(hostName: String) -> Bool {
    mqttClient = CocoaMQTT(clientID: "iOS Device", host: hostName, port: 1883)
    return mqttClient?.connect() ?? false
}

func disconnectServer() {
    mqttClient?.disconnect()
}




// Syntax:

// mqttClinet.connect()
// mqttClinet.disconnect()  // when done
// mqttClient.publish("topic", withString: "message")
// mqttClient.subscribe("topic")








