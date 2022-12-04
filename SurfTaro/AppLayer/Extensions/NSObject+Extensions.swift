//
//  NSObject+Extensions.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 26.11.2022.
//

import Foundation

extension NSObject {
    
    static var className: String {
        return String(describing: self)
    }
}
