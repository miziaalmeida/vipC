//
//  Coordinator.swift
//  VIP-C
//
//  Created by Mizia Lima on 24/04/22.
//

import Foundation
import UIKit

// MARK: Actions /Importância de se ter ou n um Equatable

enum FirstViewAction: Equatable {
    case openSecondView
}

protocol FirstViewCoordinating: AnyObject {
    var viewController: UIViewController? { get set }
    func start(with action: FirstViewAction)
}

final class FirstViewCoordinator: FirstViewCoordinating {
    weak var viewController: UIViewController?
}

extension FirstViewCoordinating {
    // MARK: Função start do coordinator.. ela que passa a ref pra presenter de para onde o app deverá se mover
    func start(with action: FirstViewAction) {
        switch action {
        case .openSecondView:
            // Aqui na controller passaríamos a instancia de responsabilidade para a nova scene ou somente para a própria Controller, vai depender da estratégia e da ação que será tomada.
            let controller = SecondViewFactory.make()
            viewController?.present(controller, animated: true)
        }
    }
}
