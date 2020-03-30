//
//  HomePresenter.swift
//  Channels
//
//  Created Ahmed Samir on 3/23/20.
//  Copyright © 2020 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

class HomePresenter: NSObject {

    private weak var view: HomeViewProtocol?
    private var interactor: HomeInteractorInputProtocol?
    private var router: HomeWireframeProtocol?

    init(interface: HomeViewProtocol,
         interactor: HomeInteractorInputProtocol?,
         router: HomeWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
extension HomePresenter: HomePresenterProtocol {

}
extension HomePresenter: HomeInteractorOutputProtocol {

}
