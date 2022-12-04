//
//  MainItemType.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 26.11.2022.
//

import Foundation
import DifferenceKit

enum MainItemType: Hashable {
    
    case card
    case cardDescription(viewModel: MainDescriptionCellUIModel)
}
