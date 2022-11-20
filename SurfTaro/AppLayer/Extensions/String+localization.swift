//
//  String+localization.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//

import Foundation

extension String {

    static func localized(_ key: String, defaultValue: String = "") -> String {
        return Bundle.main.localizedString(forKey: key, value: nil, table: nil)
    }
}
