//
//  Interactor.swift
//  VIP-C
//
//  Created by Mizia Lima on 24/04/22.
//

import Foundation

protocol FirstViewInteracting: AnyObject {
    func openSecondViewController()
}

final class FirstViewInteractor: FirstViewInteracting {
    private let presenter: FirstViewPresenting
    private let coordinator: FirstViewCoordinating
    
    init(presenter: FirstViewPresenting, coordinator: FirstViewCoordinating) {
        self.presenter = presenter
        self.coordinator = coordinator
        presenter.coordinator = coordinator
    }
    
    func openSecondViewController() {
        presenter.didNextStep(with: .openSecondView)
    }
}
