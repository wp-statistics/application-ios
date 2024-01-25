//
//  Wp_StatisticsApp.swift
//  Wp-Statistics
//
//  Created by Kambiz on 2024-01-03.
//

import SwiftUI

@main
struct Wp_StatisticsApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                WebsiteListView()
            }
        }
    }
}
