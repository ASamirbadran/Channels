//
//  Container.swift
//  Channels
//
//  Created by Ahmed Samir on 3/23/20.
//  Copyright © 2020 Ibtikar. All rights reserved.
//

import UIKit
class Container {
    class func setRootViewController(_ viewController: UIViewController) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        appDelegate.window?.rootViewController = viewController
        appDelegate.window?.makeKeyAndVisible()
    }
    
    class func getHomeScreen() -> HomeViewController {
        guard let homeVC = HomeRouter.createModule() as? HomeViewController else {
            return HomeViewController()
        }
        return homeVC
    }
    
    class func getSplashScreen() -> SplashViewController {
        guard let splashVC = SplashRouter.createModule() as? SplashViewController else {
            return SplashViewController()
        }
        return splashVC
    }
}
