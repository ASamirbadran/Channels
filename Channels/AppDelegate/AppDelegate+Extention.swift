//
//  AppDelegate+Extention.swift
//  Channels
//
//  Created by Ahmed Samir on 3/23/20.
//  Copyright © 2020 Ibtikar. All rights reserved.
//

import Foundation
import UIKit
extension AppDelegate {
    func initNetwork() {
        //getting from enviroment xconfig
        let defaults = NetworkDefaults(baseUrl: Environment.rootURL, apiKey: "")
        NetworkManager.shared = NetworkManager(config: defaults)
    }
    func openHomeScreen() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = Container.getHomeScreen()
        self.window?.makeKeyAndVisible()
    }

}
