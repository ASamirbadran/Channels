//
//  HomeProtocols.swift
//  Channels
//
//  Created Ahmed Samir on 3/23/20.
//  Copyright © 2020 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

// MARK: - ViewController -> Presenter

protocol HomePresenterProtocol: BasePresenterProtocol {

    //    var interactor: HomeInteractorInputProtocol? { get set }

    /* ViewController -> Presenter */
}

protocol HomeInteractorInputProtocol: class {

    //    var presenter: HomeInteractorOutputProtocol? { get set }

    /* Presenter -> Interactor */
}

// MARK: - Interactor -> Presenter

protocol HomeInteractorOutputProtocol: class {

    /* Interactor -> Presenter */
}

// MARK: - Presenter -> ViewController

protocol HomeViewProtocol: BaseViewProtocal {

    //    var presenter: HomePresenterProtocol? { get set }

    /* Presenter -> ViewController */
}

// MARK: - Router

protocol HomeWireframeProtocol: class {

}
