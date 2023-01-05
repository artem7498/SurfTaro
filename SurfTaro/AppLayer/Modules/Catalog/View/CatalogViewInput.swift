//
//  CatalogViewInput.swift
//  SurfTaro
//
//  Created by Artem on 05/01/2023.
//  Copyright © 2023 Artem Akopian. All rights reserved.
//

import Foundation

protocol CatalogViewInput: AnyObject {

    func setupInitialState(title: String?)
}