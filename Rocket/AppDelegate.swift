//
//  AppDelegate.swift
//  Rocket
//
//  Created by You Been Lee on 2020/07/24.
//  Copyright © 2020 You Been Lee. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow()
        window?.rootViewController = FriendListViewController()
        window?.makeKeyAndVisible()
        
        return true
    }


}

