//
//  MainInteractor.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//  
//

import Foundation

// MARK: Protocol - MainPresenterToInteractorProtocol (Presenter -> Interactor)
protocol MainPresenterToInteractorProtocol: AnyObject {

}

class MainInteractor {

    // MARK: Properties
    weak var presenter: MainInteractorToPresenterProtocol!

}

// MARK: Extension - MainPresenterToInteractorProtocol
extension MainInteractor: MainPresenterToInteractorProtocol {
    
}