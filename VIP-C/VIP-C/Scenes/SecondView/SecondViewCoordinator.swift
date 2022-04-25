//
//  SecondViewCoordinator.swift
//  VIP-C
//
//  Created by Mizia Lima on 24/04/22.
//

import Foundation
import UIKit

enum SecondViewAction: Equatable {
    case returnFirstView
}


protocol SecondViewCoordinating {
    var viewController: UIViewController? { get set }
    func start(with action: SecondViewAction)
}

final class SecondViewCoordinator: SecondViewCoordinating {
    weak var viewController: UIViewController?
}

extension SecondViewCoordinating {
    func start(with action: SecondViewAction) {
        switch action {
        case .returnFirstView:
//            let controller = FirstViewFactory.make()
            viewController?.dismiss(animated: true)
        }
    }
}
