//
//  HomeInteractor.swift
//  Channels
//
//  Created Ahmed Samir on 3/23/20.
//  Copyright © 2020 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

class HomeInteractor {

    private weak var presenter: HomeInteractorOutputProtocol?

    // MARK: - Custom Setter
    public func setPresenter (presenter: HomeInteractorOutputProtocol) {
        self.presenter = presenter
    }
}

extension HomeInteractor: HomeInteractorInputProtocol {

}
