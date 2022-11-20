//
//  AppInitializer.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 20.11.2022.
//

import UIKit

class AppInitializer {
    
    // MARK: - Open properties

    static let instance = AppInitializer()

    private init() { }

    func appInit(windowScene: UIWindowScene) -> UIWindow {
        let window = UIWindow(windowScene: windowScene)
        initWithWindow(window: window)

        return window
    }

    private func initWithWindow(window: UIWindow) {
        // MARK: - CellsRegister

//        CellsRegister.apply(cellsMapper)

        GlobalRouter.instance.window = window
        
        GlobalRouter.instance.setMain(animated: true, to: STTabBarType.main.rawValue)
    }
    
    func initiateServices() {
        fpLog(#fileID, #function)
    }
}

func fpLog(_ items: Any...) {
    #if DEBUG
    print(items.map { String(describing: $0) }.joined(separator: ", "))
    #endif
}
