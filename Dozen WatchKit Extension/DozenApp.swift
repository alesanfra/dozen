//
//  DozenApp.swift
//  Dozen WatchKit Extension
//
//  Created by Alessio on 17/10/21.
//

import SwiftUI

@main
struct DozenApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
