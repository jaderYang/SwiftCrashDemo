//
//  AppDelegate.swift
//  CrashDemo
//
//  Created by jaderyang on 2020/6/5.
//  Copyright © 2020 iherb. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let rootNav = UINavigationController(rootViewController: ViewController())
        window!.rootViewController = rootNav
        window!.makeKeyAndVisible()
        window!.backgroundColor = .white
        testColdStartUp(rootNav)
        return true
    }
    
    
    func testColdStartUp(_ nav: UINavigationController) {
        nav.pushViewController(TestViewController(), animated: true)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            nav.pushViewController(TestViewController(), animated: true)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            nav.pushViewController(TestViewController(), animated: true)
        }
    }
}

