//
//  STTabBarType.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//

import UIKit

// MARK: TDCTabBarType

enum STTabBarType: Int, CaseIterable {
    
    case main
    case cardsDeck
    case tarotSpread
    
    var title: String {
        switch self {
        case .main:
            return .localized("tabBar.main")
        case .cardsDeck:
            return .localized("tabBar.cardsDeck")
        case .tarotSpread:
            return .localized("tabBar.tarotSpread")
        }
    }
    
    var image: UIImage {
        switch self {
        case .main:
            return Images.Icons.mainTabSelected
        case .cardsDeck:
            return Images.Icons.cardsDeckTabSelected
        case .tarotSpread:
            return Images.Icons.tarotSpreadTabSelected
        }
    }
    
    var selectedImage: UIImage {
        switch self {
        case .main:
            return Images.Icons.mainTabSelected
        case .cardsDeck:
            return Images.Icons.cardsDeckTabSelected
        case .tarotSpread:
            return Images.Icons.tarotSpreadTabSelected
        }
    }
    
    func configure() -> UIViewController {
        switch self {
        case .main:
            let viewController = MainConfigurator().configure()
            return viewController
        case .cardsDeck:
            let viewController = CatalogConfigurator().configure()
            return viewController
        case .tarotSpread:
            return UIViewController()
        }
    }
}
