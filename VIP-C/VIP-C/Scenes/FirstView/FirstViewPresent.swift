//
//  Presenter.swift
//  VIP-C
//
//  Created by Mizia Lima on 24/04/22.
//

// MARK: Classe responsável por formatar a apresentação dos dados
import Foundation

protocol FirstViewPresenting: AnyObject {
    func didNextStep(with action: FirstViewAction)
    var coordinator: FirstViewCoordinating? { get set }
}

final class FirstViewPresenter: FirstViewPresenting {
    weak var coordinator: FirstViewCoordinating?
    weak var viewController: FirstViewControllerDisplay?
    
    init(coordinator: FirstViewCoordinating) {
        self.coordinator = coordinator
        //coordinator.viewController = viewController
    }
    
    func didNextStep(with action: FirstViewAction) {
        coordinator?.start(with: action)
    }
}
