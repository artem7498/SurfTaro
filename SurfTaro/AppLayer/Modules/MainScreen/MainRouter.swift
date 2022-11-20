//
//  MainRouter.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//  
//

import Foundation

// MARK: Protocol - MainPresenterToRouterProtocol (Presenter -> Router)
protocol MainPresenterToRouterProtocol: AnyObject {

}

class MainRouter {

    // MARK: Properties
    weak var view: MainRouterToViewProtocol!
}

// MARK: Extension - MainPresenterToRouterProtocol
extension MainRouter: MainPresenterToRouterProtocol {
    
}