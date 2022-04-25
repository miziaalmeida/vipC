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
    // private let service: FirstViewServicing -> pensando no momento em q vc precisar já fazer a integração com a service/worker
    private let presenter: FirstViewPresenting
    
    init(presenter: FirstViewPresenting) {
        self.presenter = presenter
    }
}

extension FirstViewInteractor {
    func openSecondViewController() {
        presenter.didNextStep(with: .openSecondView)
    }
}
