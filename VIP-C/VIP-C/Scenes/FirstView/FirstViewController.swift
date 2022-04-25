//
//  ViewController.swift
//  VIP-C
//
//  Created by Mizia Lima on 24/04/22.
//

import UIKit

protocol FirstViewControllerDisplay: AnyObject {
    // 
}

class FirstViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("SignIn", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.backgroundColor = .darkGray
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let interactor: FirstViewInteracting
    private let presenter: FirstViewPresenting
    private let coordinator: FirstViewCoordinating
    
    init(interactor: FirstViewInteracting,
         presenter: FirstViewPresenting,
         coordinator: FirstViewCoordinating) {
        self.interactor = interactor
        self.presenter = presenter
        self.coordinator = coordinator
        presenter.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    func configureViews() {
        view.backgroundColor = .darkText
        buildViewHierarchy()
        setConstraints()
    }
    
    private func buildViewHierarchy() {
        view.addSubview(button)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 48),
            button.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}

extension FirstViewController: FirstViewControllerDisplay { }

@objc extension FirstViewController {
    func didTapButton() {
        interactor.openSecondViewController()
    }
}
