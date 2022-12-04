//
//  MainPresenter.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//  
//

import Foundation

// MARK: Protocol - MainViewToPresenterProtocol (View -> Presenter)
protocol MainViewToPresenterProtocol: AnyObject {
	func viewDidLoad()
}

// MARK: Protocol - MainInteractorToPresenterProtocol (Interactor -> Presenter)
protocol MainInteractorToPresenterProtocol: AnyObject {
}

class MainPresenter {

    // MARK: Properties
    var router: MainPresenterToRouterProtocol!
    var interactor: MainPresenterToInteractorProtocol!
    weak var view: MainPresenterToViewProtocol!
    
    private func buildModels() {
        var sections: [MainSectionModel] = []
        
        var cardSection = MainSectionModel.init(section: .cardOfTheDay, items: [])
        
        let cardImage: MainItemType = .card
        cardSection.items.append(cardImage)
        
        let titleMock = "Star"
        let descrMock = "Energy card: Skill, diplomacy, address, subtlety; sickness, pain, loss, disaster, snares of enemies; self-confidence, will; the Querent, if male. His existential longing acts as a motive for creativity, but the horizon of expectation is traditional. Erotic is relative. Artistic visibility completes a minor reconstructive approach. The leveling of individuality completes the unchanging symbolic metaphorism. The parody imitates the neurotic method of cluster analysis. The basic personality type is changeable."
        let cardDescription: MainItemType = .cardDescription(viewModel: .init(title: titleMock, description: descrMock))
        cardSection.items.append(cardDescription)
        
        sections.append(cardSection)
        view.updateTableView(with: sections)
    }
}

// MARK: Extension - MainViewToPresenterProtocol
extension MainPresenter: MainViewToPresenterProtocol {
    
    func viewDidLoad() {
        buildModels()
    }
}

// MARK: Extension - MainInteractorToPresenterProtocol
extension MainPresenter: MainInteractorToPresenterProtocol {
    
}
