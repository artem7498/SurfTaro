//
//  CatalogPresenter.swift
//  SurfTaro
//
//  Created by Artem on 05/01/2023.
//  Copyright © 2023 Artem Akopian. All rights reserved.
//

import Foundation

final class CatalogPresenter {

    // MARK: Dependencies

    private weak var view: CatalogViewInput?
    private let interactor: CatalogInteractorInput
    private let router: CatalogRouterInput

    // MARK: Private properties

    init(view: CatalogViewInput,
         interactor: CatalogInteractorInput,
         router: CatalogRouterInput) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }

    func buildModels() {
    }
}

// MARK: CatalogViewOutput

extension CatalogPresenter: CatalogViewOutput {

    func viewIsReady() {
        view?.setupInitialState(title: nil)
        buildModels()
    }
}

// MARK: CatalogInteractorOutput

extension CatalogPresenter: CatalogInteractorOutput { }
