//
//  SecondViewFactory.swift
//  VIP-C
//
//  Created by Mizia Lima on 24/04/22.
//

import Foundation
import UIKit

public enum SecondViewFactory {
    public static func make() -> UIViewController {
//        let service: FirstViewServicing = FirstViewService()
        var coordinator: SecondViewCoordinating = SecondViewCoordinator()
        var presenter: SecondViewPresenting = SecondViewPresenter(coordinator: coordinator)
        let interactor: SecondViewInteracting = SecondViewInteractor(presenter: presenter)
        let viewController = SecondViewViewController(interactor: interactor)
        
        coordinator.viewController = viewController
        presenter.viewController = viewController
        return viewController
    }
}
