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
    
    private lazy var contentView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = Colors.tableBg.ui
        return view
    }()

    // MARK: Life cycle

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
        output.viewIsReady()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    // MARK: - UI Configuration
        
    private func configureUI() {
        view.addSubview(contentView)
        contentView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
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
