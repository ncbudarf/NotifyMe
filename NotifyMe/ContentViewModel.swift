//
//  ContentViewModel.swift
//  NotifyMe
//
//  Created by Noah budarf on 2020-11-05.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import Foundation
import UserNotifications

class ContentViewModel: NSObject, ObservableObject {
	override init() {
		super.init()
		AppDelegate().notificationCenter.delegate = self
    }

	func triggerNotification() {
		LocalNotification().scheduleNotification(notificationType: "Quick Timer",
												 uniqueIdentifier: "Local Notification",
												 numberOfSeconds: 5.0)
	}
}

extension ContentViewModel: UNUserNotificationCenterDelegate {
	//Note: These are only called if the user clicks the banner, not the app

	func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {}

	func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
			print("receaved response")
			completionHandler()
		}

	func userNotificationCenter(_ center: UNUserNotificationCenter, openSettingsFor notification: UNNotification?) {}
}
