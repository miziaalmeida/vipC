//
//  SecondViewInteractor.swift
//  VIP-C
//
//  Created by Mizia Lima on 24/04/22.
//

import Foundation

protocol SecondViewInteracting {
    func returnFirstViewController()
}

final class SecondViewInteractor: SecondViewInteracting {
    private let presenter: SecondViewPresenting
    
    init(presenter: SecondViewPresenting) {
        self.presenter = presenter
    }
}

extension SecondViewInteractor {
    func returnFirstViewController() {
        presenter.didNextStep(with: .returnFirstView)
    }
}
