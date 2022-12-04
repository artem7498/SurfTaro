//
//  MainViewController.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//  
//

import UIKit
import SnapKit

// MARK: Protocol - MainPresenterToViewProtocol (Presenter -> View)
protocol MainPresenterToViewProtocol: AnyObject {
    
    func updateTableView(with data: [MainSectionModel])
}

// MARK: Protocol - MainRouterToViewProtocol (Router -> View)
protocol MainRouterToViewProtocol: AnyObject {
    
    func presentView(view: UIViewController)
    func pushView(view: UIViewController)
}

class MainViewController: UIViewController {
    
    // MARK: - Property
    var presenter: MainViewToPresenterProtocol!
    
    // MARK: - UI elements
    
    private lazy var contentView: UIView = {
        let view = UIView(frame: .zero)
        return view
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.backgroundColor = Colors.tableBg.ui
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.delegate = self
        tableView.showsHorizontalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
        tableView.keyboardDismissMode = .onDrag
        tableView.registerCell(MainCardCell.self)
        tableView.registerCell(MainDescriptionCell.self)
        return tableView
    }()
    
    // MARK: - DataSource
    
    private lazy var dataSource = UITableViewDiffableDataSource<MainSectionType, MainItemType>(tableView: tableView) { [weak self]
        (tableView, indexPath, item) in
        
        switch item {
        case .card:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MainCardCell.className, for: indexPath) as? MainCardCell else {
                return UITableViewCell(style: .default, reuseIdentifier: nil)
            }
            return cell
        case .cardDescription(let viewModel):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MainDescriptionCell.className, for: indexPath) as? MainDescriptionCell else {
                return UITableViewCell(style: .default, reuseIdentifier: nil)
            }
            cell.configure(viewModel: viewModel)
            return cell
        }
    }

    // MARK: - init
    init() {
        super.init(nibName: nil, bundle: nil)

        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commonInit()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
        presenter.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    // MARK: - private func
    private func commonInit() { }

    private func configureUI() {
        view.backgroundColor = .orange
        
        view.addSubview(contentView)
        contentView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        
        contentView.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

// MARK: Extension - MainPresenterToViewProtocol 
extension MainViewController: MainPresenterToViewProtocol {
    
    func updateTableView(with data: [MainSectionModel]) {
        var snapshot = NSDiffableDataSourceSnapshot<MainSectionType, MainItemType>()
        for model in data {
            if !model.items.isEmpty {
                snapshot.appendSections([model.section])
                snapshot.appendItems(model.items, toSection: model.section)
            }
        }
        dataSource.apply(snapshot, animatingDifferences: false)
    }
}

// MARK: Extension - MainRouterToViewProtocol
extension MainViewController: MainRouterToViewProtocol {
    
    func presentView(view: UIViewController) {
        present(view, animated: true, completion: nil)
    }

    func pushView(view: UIViewController) {
        navigationController?.pushViewController(view, animated: true)
    }
}

extension MainViewController: UITableViewDelegate {
}
