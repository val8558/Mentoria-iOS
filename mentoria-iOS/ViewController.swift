//
//  ViewController.swift
//  mentoria-iOS
//
//  Created by Valmir Garcia on 18/07/24.
//

import UIKit

final class ViewController: UIViewController {
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        
        return label
    }()
    
    private lazy var actionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Ação", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 25
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        return button
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView (arrangedSubviews: [
            titleLabel,
            descriptionLabel,
            UIView(),
            actionButton,
        ])
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // setUpView();
           setupWithStackView()
    }
    
    
    private func setupWithStackView() {
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
        
    }
    
    // private func setUpView() {
    //    view.addSubview(titleLabel)
    //    view.addSubview(descriptionLabel)
    //    view.addSubview(actionButton)
    //
    //    NSLayoutConstraint.activate([
    //        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
    //        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
    //        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
    //        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
    //    ])
    //
    //    NSLayoutConstraint.activate([
    //        descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
    //        descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
    //        descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
    //        descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
    //    ])
    //
    //    NSLayoutConstraint.activate([
    //        actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
    //        actionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
    //        actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
    //        actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
    //    ])
    //}
}

