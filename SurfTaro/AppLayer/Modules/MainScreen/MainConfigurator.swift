//
//  MainConfigurator.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//  
//

import UIKit

class MainConfigurator {
    func configure() -> UIViewController {
        let view = MainViewController()
        let presenter = MainPresenter()
        let router = MainRouter()
        let interactor = MainInteractor()
        
        view.presenter = presenter

        presenter.router = router
        presenter.interactor = interactor
        presenter.view = view

        interactor.presenter = presenter
        
        router.view = view
        
        return view
    }
}