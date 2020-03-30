//
//  BaseProtocol
//  Channels
//
//  Created by Ahmed Samir on 3/23/20.
//  Copyright © 2020 Ibtikar. All rights reserved.
//

import Foundation

@objc
protocol PresenterLifeCycleProtocol {

    @objc
    optional func loadView()

    @objc
    optional func viewDidLoad()

    @objc
    optional func viewWillAppear()

    @objc
    optional func viewDidAppear()

    @objc
    optional func didReceiveMemoryWarning()

    @objc
    optional func viewWillDisappear()

    @objc
    optional func viewDidDisappear()
}

protocol BasePresenterProtocol: class, PresenterLifeCycleProtocol {

}
