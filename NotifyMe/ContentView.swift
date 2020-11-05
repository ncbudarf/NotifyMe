//
//  ContentView.swift
//  NotifyMe
//
//  Created by Noah budarf on 2020-11-05.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
			LocalNotification().scheduleNotification(notificationType: "Quick Timer",
													 uniqueIdentifier: "Local Notification",
													 numberOfSeconds: 5.0)
		}) {
			Text("Start Timer")
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
