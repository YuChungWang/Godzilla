//
//  AppDelegate.swift
//  Godzilla
//
//  Created by 王昱中 on 2021/4/2.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func applicationDidFinishLaunching(_ application: UIApplication) {
        let vc = HomepageVC()
        let nc = UINavigationController(rootViewController: vc)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = nc
        self.window?.makeKeyAndVisible()
    }
}

