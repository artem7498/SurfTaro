//
//  String+Extensions.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//

import Foundation

extension String {
    
    var firstUppercased: String { return prefix(1).uppercased() + dropFirst() }
    
    var validURL: Bool {
        let regEx = "((?:http|https)://)?(?:www\\.)?[\\w\\d\\-_]+\\.\\w{2,3}(\\.\\w{2})?(/(?<=/)(?:[\\w\\d\\-./_]+)?)?"
        let predicate = NSPredicate(format: "SELF MATCHES %@", argumentArray: [regEx])
        return predicate.evaluate(with: self)
    }
}
