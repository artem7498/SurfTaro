//
//  UIWindow+extensions.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//

import UIKit

extension UIWindow {
    
    func setRoot(_ root: UIViewController, animated: Bool = false) {
        if animated {
            UIView.transition(with: self,
                              duration: 0.5,
                              options: .transitionCrossDissolve,
                              animations: nil,
                              completion: nil)
        }
        rootViewController = root
        makeKeyAndVisible()
    }
}
