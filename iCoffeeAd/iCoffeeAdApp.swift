//
//  iCoffeeAdApp.swift
//  iCoffeeAd
//
//  Created by 大和田一裕 on 2022/07/16.
//

import SwiftUI
import Firebase

@main
struct iCoffeeAdApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
