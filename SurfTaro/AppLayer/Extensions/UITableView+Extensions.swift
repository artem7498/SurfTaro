//
//  UITableView+Extensions.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 26.11.2022.
//

import UIKit

extension UITableView {
    
    func registerCell(_ cell: UITableViewCell.Type) {
        register(cell, forCellReuseIdentifier: cell.className)
    }
}
