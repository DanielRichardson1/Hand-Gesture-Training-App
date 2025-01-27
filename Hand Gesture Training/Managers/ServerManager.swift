//
//  ServerManager.swift
//  Hand Gesture Training
//
//  Created by Daniel Richardson on 1/27/25.
//

import CocoaMQTT


let hostName = "192.168.0.X"  // Raspberry Pi's network address

let mqttClient = CocoaMQTT(clientID: "iOS Device", host: hostName, port: 1883)

// mqttClinet.connect()
// mqttClinet.disconnect()  // when done
// mqttClient.publish("topic", withString: "message")
// mqttClient.subscribe("topic")








