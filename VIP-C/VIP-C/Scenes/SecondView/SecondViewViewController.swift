//
//  SecondViewViewController.swift
//  VIP-C
//
//  Created by Mizia Lima on 24/04/22.
//

import UIKit

protocol SecondViewViewControllerDisplay: AnyObject { }

class SecondViewViewController: UIViewController {
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("SignOut", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.backgroundColor = .darkGray
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let interactor: SecondViewInteracting
    
    init(interactor: SecondViewInteracting) {
        self.interactor = interactor
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
        view.backgroundColor = .blue
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

extension SecondViewViewController: SecondViewViewControllerDisplay { }

@objc extension SecondViewViewController {
    func didTapButton() {
        interactor.returnFirstViewController()
    }
}
