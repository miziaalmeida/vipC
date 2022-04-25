//
//  Factory.swift
//  VIP-C
//
//  Created by Mizia Lima on 24/04/22.
//

// MARK: Factory para construção das injeções de dependências

import Foundation
import UIKit

public enum Factory {
    public static func make() -> UIViewController {
        let controller = UIViewController()
        let coordinator: FirstViewCoordinating = FirstViewCoordinator(viewController: controller)
        let presenter = FirstViewPresenter(coordinator: coordinator)
        let interactor: FirstViewInteracting = FirstViewInteractor(presenter: presenter, coordinator: coordinator)
        let viewController = FirstViewController(interactor: interactor)
        presenter.coordinator = coordinator
        presenter.viewController = viewController
        coordinator.viewController = viewController
        
        return viewController
    }
}
