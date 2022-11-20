//
//  GlobalRouter.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//

import UIKit

class GlobalRouter {

    static let instance = GlobalRouter()

    weak var window: UIWindow?
    
    private init() { }
    
    func setMain(animated: Bool = false, to index: Int) {
        let viewController = STTabBarController(nibName: nil, bundle: nil)
        viewController.selectedIndex = index
        window?.setRoot(viewController, animated: animated)
    }
}
