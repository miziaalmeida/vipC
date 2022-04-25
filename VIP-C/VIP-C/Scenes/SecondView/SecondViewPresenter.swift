//
//  SecondViewPresenter.swift
//  VIP-C
//
//  Created by Mizia Lima on 24/04/22.
//

import Foundation

protocol SecondViewPresenting {
    var viewController: SecondViewViewControllerDisplay? { get set }
    func didNextStep(with action: SecondViewAction)
}

final class SecondViewPresenter: SecondViewPresenting {
    weak var viewController: SecondViewViewControllerDisplay?
    private let coordinator: SecondViewCoordinating
    
    init(coordinator: SecondViewCoordinating) {
        self.coordinator = coordinator
    }
    
    func didNextStep(with action: SecondViewAction) {
        coordinator.start(with: action)
    }
}
