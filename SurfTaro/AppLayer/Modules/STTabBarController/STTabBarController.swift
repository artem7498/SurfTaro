//
//  STTabBarController.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//

import UIKit

class STTabBarController: UITabBarController, UITabBarControllerDelegate {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        commonInit()
    }
    
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        fatalError("forbidden @ commonInit")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    private func commonInit() {
        self.tabBar.tintColor = Colors.brandGoldColor.ui
        let items = TDCTabBarType.allCases
        let controllers = items.map { (type) -> UIViewController in
            let controller: UINavigationController
            controller = TDCNavigationController(rootViewController: type.configure())
            controller.navigationBar.backgroundColor = Colors.tableBg.ui
            controller.navigationBar.isTranslucent = false
            controller.tabBarItem = .init(title: type.title,
                                          image: type.image,
                                          selectedImage: type.selectedImage)

            return controller
        }
        super.setViewControllers(controllers, animated: true)
    }
}
