//
//  MainSectionType.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 26.11.2022.
//

import Foundation
import DifferenceKit

enum MainSectionType: Differentiable {
    
    case cardOfTheDay
}

struct MainSectionModel: Differentiable {
    
    let section: MainSectionType
    var items: [MainItemType]
    
    init(section: MainSectionType, items: [MainItemType]) {
        self.section = section
        self.items = items
    }
    
    var differenceIdentifier: MainSectionType {
        return section
    }
    
    func isContentEqual(to source: MainSectionModel) -> Bool {
        return items == source.items
    }
}
