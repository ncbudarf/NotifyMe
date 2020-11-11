//
//  ContentView.swift
//  NotifyMe
//
//  Created by Noah budarf on 2020-11-05.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	var viewModel: ContentViewModel = ContentViewModel()

    var body: some View {
        Button(action: {
			self.viewModel.triggerNotification()
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
