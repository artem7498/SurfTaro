//
//  UIViewController+TransitionHandler.swift
//  SurfTaro
//
//  Created by Artem A. FEIP on 05.01.2023.
//

import UIKit

protocol TransitionHandler: AnyObject {

    func present(_ viewController: UIViewController)

    func openModal(_ modalVc: UIViewController)
    
    func push(_ viewController: UIViewController)

    func dismiss()
    
    func dismissWithCompletion(completion: (() -> Void)?)

    func dismissModal(completion: (() -> Void)?)

    func back()

    func replaceCurrent(with newViewController: UIViewController, animated: Bool)

    func replaceAll(with newViewController: UIViewController, animated: Bool)

    func replaceAll(with newViewControllers: [UIViewController], animated: Bool)
    
    func root(animated: Bool)

    func closePanModal()
}

extension UIViewController: TransitionHandler {

    func present(_ viewController: UIViewController) {
        present(viewController, animated: true, completion: nil)
    }

    func openModal(_ modalVc: UIViewController) {
        modalVc.modalPresentationStyle = .overFullScreen
        present(modalVc, animated: false)
    }
    
    func push(_ viewController: UIViewController) {
        guard let navigationController = navigationController else { return }
        navigationController.pushViewController(viewController, animated: true)
    }

    func dismiss() {
        dismiss(animated: true)
    }

    func dismissModal(completion: (() -> Void)?) {
        dismiss(animated: false, completion: completion)
    }

    func dismissWithCompletion(completion: (() -> Void)?) {
        dismiss(animated: true, completion: completion)
    }

    func back() {
        navigationController?.popViewController(animated: true)
    }

    func replaceCurrent(with newViewController: UIViewController, animated: Bool) {
        guard var viewControllers = navigationController?.viewControllers, viewControllers.count > 0 else {
            return
        }
        viewControllers[viewControllers.count - 1] = newViewController
        navigationController?.setViewControllers(viewControllers, animated: animated)
    }

    func replaceAll(with newViewController: UIViewController, animated: Bool) {
        navigationController?.setViewControllers([newViewController], animated: animated)
    }
    
    func replaceAll(with newViewControllers: [UIViewController], animated: Bool) {
        navigationController?.setViewControllers(newViewControllers, animated: animated)
    }

    func root(animated: Bool) {
        guard let viewControllers = navigationController?.viewControllers else {
            return
        }
        guard let first = viewControllers.first else {
            return
        }
        navigationController?.setViewControllers([first], animated: animated)
    }

    func closePanModal() {
        dismiss(animated: true, completion: nil)
    }
}

