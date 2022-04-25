//
//  Presenter.swift
//  VIP-C
//
//  Created by Mizia Lima on 24/04/22.
//

// MARK: Classe responsável por formatar a apresentação dos dados
import Foundation

protocol FirstViewPresenting: AnyObject {
    var viewController: FirstViewControllerDisplay? { get set }
    func didNextStep(with action: FirstViewAction)
}

final class FirstViewPresenter: FirstViewPresenting {
    weak var viewController: FirstViewControllerDisplay?
    private let coordinator: FirstViewCoordinating?
    
    init(coordinator: FirstViewCoordinating) {
        self.coordinator = coordinator
    }
    
    func didNextStep(with action: FirstViewAction) {
        coordinator?.start(with: action)
    }
}
