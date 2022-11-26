//
//  Colors.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//

import UIKit

enum Colors: String {
    
    case tabBar
    case brandOrange
    case tableBg
    
    var ui: UIColor {
        return UIColor(named: rawValue.firstUppercased) ?? .cyan
    }
}
