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
        let vc = UIViewController()
        
        vc.view.backgroundColor = .yellow
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
    }
}

