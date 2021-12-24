//
//  Skin_DetectorApp.swift
//  Skin Detector
//
//  Created by Grant Hough on 12/23/21.
//

import SwiftUI
import Firebase
import FirebaseAuth
@main

struct Skin_DetectorApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            let viewModel = AppViewModel()
            TitleScreen()
                .environmentObject(viewModel)
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
    
        return true
        
    }
}

