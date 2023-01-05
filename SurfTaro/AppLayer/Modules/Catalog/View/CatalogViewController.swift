//
//  CatalogViewController.swift
//  SurfTaro
//
//  Created by Artem on 05/01/2023.
//  Copyright © 2023 Artem Akopian. All rights reserved.
//

import UIKit
import DifferenceKit
import SnapKit

final class CatalogViewController: UIViewController {

    var output: CatalogViewOutput!

    // MARK: Private properties
    
    fileprivate var models: [AnyDifferentiable] = []

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        output.viewIsReady()
    }

    // MARK: - UI Configuration
        
    private func configureUI() {
    }
}

// MARK: CatalogViewInput

extension CatalogViewController: CatalogViewInput {

    func setupInitialState(title: String?) {
        navigationItem.title = title
    }
}

// MARK: UITableViewDataSource

extension CatalogViewController {
}
