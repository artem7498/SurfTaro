//
//  MainViewController.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//  
//

import UIKit

// MARK: Protocol - MainPresenterToViewProtocol (Presenter -> View)
protocol MainPresenterToViewProtocol: AnyObject {

}

// MARK: Protocol - MainRouterToViewProtocol (Router -> View)
protocol MainRouterToViewProtocol: AnyObject {
    func presentView(view: UIViewController)
    func pushView(view: UIViewController)
}

class MainViewController: UIViewController {
    
    // MARK: - Property
    var presenter: MainViewToPresenterProtocol!

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
    }
}

// MARK: Extension - MainPresenterToViewProtocol 
extension MainViewController: MainPresenterToViewProtocol{
    
}

// MARK: Extension - MainRouterToViewProtocol
extension MainViewController: MainRouterToViewProtocol{
    func presentView(view: UIViewController) {
        present(view, animated: true, completion: nil)
    }

    func pushView(view: UIViewController) {
        navigationController?.pushViewController(view, animated: true)
    }
}
