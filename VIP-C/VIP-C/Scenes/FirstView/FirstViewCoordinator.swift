//
//  Coordinator.swift
//  VIP-C
//
//  Created by Mizia Lima on 24/04/22.
//

import Foundation
import UIKit

enum FirstViewAction: Equatable {
    case openSecondView
}

protocol FirstViewCoordinating: AnyObject {
    var viewController: UIViewController? { get set }
    func start(with action: FirstViewAction)
}

final class FirstViewCoordinator: FirstViewCoordinating {
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func start(with action: FirstViewAction) {
        switch action {
        case .openSecondView:
            let controller = SecondViewViewController()
            viewController?.present(controller, animated: true)
        }
    }
}
