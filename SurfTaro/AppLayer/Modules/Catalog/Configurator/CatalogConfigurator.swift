//
//  CatalogConfigurator.swift
//  SurfTaro
//
//  Created by Artem on 05/01/2023.
//  Copyright © 2023 Artem Akopian. All rights reserved.
//

import UIKit

final class CatalogConfigurator {

    func configure() -> UIViewController {
        let viewController = CatalogViewController()
        
        let router = CatalogRouter(transitionHandler: viewController)
        
        let interactor = CatalogInteractor()

        let presenter = CatalogPresenter(view: viewController, interactor: interactor, router: router)

        interactor.output = presenter
        viewController.output = presenter

        return viewController
    }
}
