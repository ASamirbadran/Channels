//
//  HomeViewController.swift
//  Channels
//
//  Created Ahmed Samir on 3/23/20.
//  Copyright © 2020 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    // MARK: - Public Variables
    private var presenter: HomePresenterProtocol?

    // MARK: - Private Variables

    // MARK: - Computed Variables

    // MARK: - IBOutlets

    // MARK: - Custom Setter
    public func setPresenter (presenter: HomePresenterProtocol) {
        self.presenter = presenter
    }
}

// MARK: - View controller lifecycle methods
extension HomeViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad?()
    }
}

// MARK: - IBActions
extension HomeViewController {

}

// MARK: - Selectors
extension HomeViewController {

}

// MARK: - Private
extension HomeViewController {

}

// MARK: - Protocal
extension HomeViewController: HomeViewProtocol {

}
