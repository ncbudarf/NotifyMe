//
//  Notification.swift
//  NotifyMe
//
//  Created by Noah budarf on 2020-11-05.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import Foundation
import UserNotifications

class LocalNotification {
	func scheduleNotification(notificationType: String,
							  uniqueIdentifier: String,
							  numberOfSeconds: Double) {



		let request = UNNotificationRequest(identifier: uniqueIdentifier,
											content: content(notificationType),
											trigger: dateTrigger(numberOfSeconds))

		AppDelegate().notificationCenter.add(request) { (error) in
			if let error = error {
				print("Error \(error.localizedDescription)")
			}
		}
	}

	func content(_ notificationType: String) -> UNMutableNotificationContent {
		let content = UNMutableNotificationContent()

		content.title = notificationType
		content.body = "This is example how to create " + notificationType + " Notifications"
		content.sound = UNNotificationSound.default
		content.badge = 1
		return content
	}

	func dateTrigger(_ numberOfSeconds: Double) -> UNNotificationTrigger {
		let date = Date(timeIntervalSinceNow: numberOfSeconds)
		let triggerDaily = Calendar.current.dateComponents([.hour,.minute,.second,], from: date)
		return UNCalendarNotificationTrigger(dateMatching: triggerDaily, repeats: false)
	}
}

