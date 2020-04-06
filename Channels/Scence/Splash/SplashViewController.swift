//
//  SplashViewController.swift
//  Channels
//
//  Created Ahmed Samir on 3/30/20.
//  Copyright © 2020 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import UIKit

class SplashViewController: BaseViewController {

    // MARK: - Public Variables
    private var presenter: SplashPresenterProtocol?

    // MARK: - Private Variables

    // MARK: - Computed Variables

    // MARK: - IBOutlets

    @IBOutlet weak var logoImageView: UIImageView!
    // MARK: - Custom Setter
    public func setPresenter (presenter: SplashPresenterProtocol) {
        self.presenter = presenter
    }
}

// MARK: - View controller lifecycle methods
extension SplashViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad?()
        
        UIView.animateKeyframes(withDuration: 5, delay: 0, options: .calculationModeCubic, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                self.logoImageView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                self.logoImageView.transform = CGAffineTransform(scaleX: 2, y: 2)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                self.logoImageView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                self.logoImageView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            }
        }, completion: { finished in
            Container.setRootViewController(Container.getHomeScreen())
        })
    }
}

// MARK: - IBActions
extension SplashViewController {

}

// MARK: - Selectors
extension SplashViewController {

}

// MARK: - Private
extension SplashViewController {

}

// MARK: - Protocal
extension SplashViewController: SplashViewProtocol {

}
