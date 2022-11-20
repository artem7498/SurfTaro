//
//  MainPresenter.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//  
//

import Foundation

// MARK: Protocol - MainViewToPresenterProtocol (View -> Presenter)
protocol MainViewToPresenterProtocol: AnyObject {
	func viewDidLoad()
}

// MARK: Protocol - MainInteractorToPresenterProtocol (Interactor -> Presenter)
protocol MainInteractorToPresenterProtocol: AnyObject {

}

class MainPresenter {

    // MARK: Properties
    var router: MainPresenterToRouterProtocol!
    var interactor: MainPresenterToInteractorProtocol!
    weak var view: MainPresenterToViewProtocol!
}

// MARK: Extension - MainViewToPresenterProtocol
extension MainPresenter: MainViewToPresenterProtocol {
    
    func viewDidLoad() {
    
    }
}

// MARK: Extension - MainInteractorToPresenterProtocol
extension MainPresenter: MainInteractorToPresenterProtocol {
    
}
