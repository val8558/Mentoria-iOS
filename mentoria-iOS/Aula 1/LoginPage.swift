//
//  LoginPage.swift
//  mentoria-iOS
//
//  Created by Valmir Garcia on 02/08/24.
//

import Foundation
import UIKit

final class LoginPage: UIView {
    
    
    private lazy var logoImage: UIImageView = {
        let logoImage = UIImageView(image: UIImage(named: "logo.svg"))
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.widthAnchor.constraint(equalToConstant: 200).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        return logoImage
    }()
    
    private lazy var titleName: UILabel = {
        let title = UILabel()
        title.text = "Bem Vindo"
        title.textAlignment = .center
        title.font = .systemFont(ofSize: 24, weight: .bold)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .systemGreen
        
        return title
    }()
    
    private lazy var userNameField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Usuário"
        textField.textAlignment = .left
        textField.font = .systemFont(ofSize: 12, weight: .regular)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
            
        return textField
    }()
    
    private lazy var passwordField: UITextField = {
        let passwordField = UITextField()
        passwordField.placeholder = "Senha"
        passwordField.isSecureTextEntry = true
        passwordField.textAlignment = .left
        passwordField.font = .systemFont(ofSize: 12, weight: .regular)
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.borderStyle = .roundedRect
        
        return passwordField
    }()
    
    private lazy var loginBtn: UIButton = {
        let loginBtn = UIButton()
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        loginBtn.setTitleColor(.white, for: .normal)
        loginBtn.layer.cornerRadius = 25
        loginBtn.backgroundColor = .systemGreen
        loginBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        return loginBtn
    }()
    
    private lazy var forgetBtn: UIButton = {
        let forgetBtn = UIButton()
        forgetBtn.translatesAutoresizingMaskIntoConstraints = false
        forgetBtn.setTitle("Primeira vez?", for: .normal)
        forgetBtn.setTitleColor(.white, for: .normal)
        forgetBtn.layer.cornerRadius = 25
        forgetBtn.backgroundColor = .systemGreen
        forgetBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        forgetBtn.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        return forgetBtn
    }()
    
    private lazy var buttonStackView: UIStackView = {
        let buttonStackView = UIStackView(arrangedSubviews: [
        loginBtn,
        forgetBtn
        ])
        
        buttonStackView.axis = .horizontal
        buttonStackView.alignment = .center
        buttonStackView.spacing  = 10
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        return buttonStackView
    }()
    
    private lazy var loginStackView: UIStackView = {
        let loginStackView = UIStackView(arrangedSubviews: [
        userNameField,
        passwordField,
        buttonStackView
        ])
        
        loginStackView.axis = .vertical
        loginStackView.alignment = .fill
        loginStackView.spacing = 16
        loginStackView.translatesAutoresizingMaskIntoConstraints = false
        return loginStackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        setupConstraints()
    }
    
    private func setupView() {
        backgroundColor = .black
        addSubview(logoImage)
        addSubview(loginStackView)
        addSubview(titleName)
            }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            
            loginStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            loginStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            loginStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            loginStackView.topAnchor.constraint(equalTo: titleName.bottomAnchor, constant: 40),
            
            titleName.bottomAnchor.constraint(equalTo: loginStackView.topAnchor, constant: -20),
            titleName.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleName.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 16),
            
            logoImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImage.topAnchor.constraint(equalTo: topAnchor, constant: 20),

                
        ])
    }
}



