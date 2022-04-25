//
//  Factory.swift
//  VIP-C
//
//  Created by Mizia Lima on 24/04/22.
//

// MARK: Factory para construção das injeções de dependências

import Foundation
import UIKit

public enum FirstViewFactory {
    public static func make() -> UIViewController {
//        let service: FirstViewServicing = FirstViewService()
        let coordinator: FirstViewCoordinating = FirstViewCoordinator()
        let presenter: FirstViewPresenting = FirstViewPresenter(coordinator: coordinator)
        let interactor: FirstViewInteracting = FirstViewInteractor(presenter: presenter)
        let viewController = FirstViewController(interactor: interactor)
        
        coordinator.viewController = viewController
        presenter.viewController = viewController
        return viewController
    }
}
