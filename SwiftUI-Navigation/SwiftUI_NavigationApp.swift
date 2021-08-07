//
//  SwiftUI_NavigationApp.swift
//  SwiftUI-Navigation
//
//  Created by Md. Kamrul Hasan on 7/8/21.
//

import SwiftUI

@main
struct SwiftUI_NavigationApp: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
        UINavigationBar.appearance().tintColor = .black
    }
    
    var body: some Scene {
        WindowGroup {
            RedOneView()
        }
    }
}
