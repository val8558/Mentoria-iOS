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
    
//    private lazy var titleName: UILabel = {
//        let title = UILabel()
//        title.text = "Bem Vindo"
//        title.textAlignment = .center
//        title.font = .roboto(size: 24, weight: .regular)
//        title.translatesAutoresizingMaskIntoConstraints = false
//        title.textColor = .titleColor
//        
//        return title
//    }()
    
    private lazy var userNameField: UITextField = {
        
        let title = UILabel()
        title.text = "Usuário"
        title.textAlignment = .center
        title.font = .roboto(size: 12, weight: .regular)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .titleColor
        
        
        let textField = UITextField()
        textField.placeholder = "Usuário"
        textField.textAlignment = .left
        textField.font = .roboto(size: 16, weight: .regular)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .none
        textField.textColor = .titleColor
        
        let bottomBorder = UIView()
        bottomBorder.translatesAutoresizingMaskIntoConstraints = false
        bottomBorder.backgroundColor = .titleColor
        
        textField.addSubview(title)
        textField.addSubview(bottomBorder)
        NSLayoutConstraint.activate([
            bottomBorder.heightAnchor.constraint(equalToConstant: 1),
            bottomBorder.leadingAnchor.constraint(equalTo: textField.leadingAnchor),
            bottomBorder.trailingAnchor.constraint(equalTo: textField.trailingAnchor),
            bottomBorder.bottomAnchor.constraint(equalTo: textField.bottomAnchor),
            
            title.bottomAnchor.constraint(equalTo: textField.topAnchor, constant: 8),
        ])
            
        return textField
    }()
    
    private lazy var passwordField: UITextField = {
        let title = UILabel()
        title.text = "Senha"
        title.textAlignment = .center
        title.font = .roboto(size: 12, weight: .regular)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .titleColor
        
        
        let passwordField = UITextField()
        passwordField.placeholder = "Senha"
        passwordField.isSecureTextEntry = true
        passwordField.textAlignment = .left
        passwordField.font = .systemFont(ofSize: 16, weight: .regular)
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.borderStyle = .none
        passwordField.textColor = .white
        
        let bottomBorder = UIView()
        bottomBorder.translatesAutoresizingMaskIntoConstraints = false
        bottomBorder.backgroundColor = .titleColor
        
        passwordField.addSubview(title)
        passwordField.addSubview(bottomBorder)
        NSLayoutConstraint.activate([
            bottomBorder.heightAnchor.constraint(equalToConstant: 1),
            bottomBorder.leadingAnchor.constraint(equalTo: passwordField.leadingAnchor),
            bottomBorder.trailingAnchor.constraint(equalTo: passwordField.trailingAnchor),
            bottomBorder.bottomAnchor.constraint(equalTo: passwordField.bottomAnchor),
            
            title.bottomAnchor.constraint(equalTo: passwordField.topAnchor, constant: 8)
           
        ])

        
        return passwordField
    }()
    
    private lazy var loginBtn: UIButton = {
        let loginBtn = UIButton()
        
        let loginBtnWidth: CGFloat = 250
        
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        loginBtn.titleLabel?.font = UIFont.roboto(size: 16)
        loginBtn.setTitleColor(.titleColor, for: .normal)
        loginBtn.layer.cornerRadius = 10
        loginBtn.backgroundColor = .clear
        loginBtn.layer.borderWidth = 1
        loginBtn.layer.borderColor = UIColor.titleColor.cgColor

        loginBtn.widthAnchor.constraint(equalToConstant: loginBtnWidth).isActive = true
        
        
        return loginBtn
    }()
    
    private lazy var forgetBtn: UIButton = {
        let forgetBtn = UIButton()
        forgetBtn.translatesAutoresizingMaskIntoConstraints = false
        forgetBtn.setTitle("Esqueceu a senha?", for: .normal)
        forgetBtn.titleLabel?.font = UIFont.roboto(size: 12)
        forgetBtn.setTitleColor(.titleColor, for: .normal)
        forgetBtn.layer.cornerRadius = 25
        forgetBtn.backgroundColor = .clear
        forgetBtn.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        return forgetBtn
    }()
    
    private lazy var firstTimeBtn: UIButton = {
        let firstTimeBtn = UIButton()
        
        let firstTimeWidth: CGFloat = 250
        
        firstTimeBtn.translatesAutoresizingMaskIntoConstraints = false
        firstTimeBtn.setTitle("Primeira vez?", for: .normal)
        firstTimeBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        firstTimeBtn.setTitleColor(.titleColor, for: .normal)
        firstTimeBtn.layer.cornerRadius = 10
        firstTimeBtn.backgroundColor = .clear
        firstTimeBtn.layer.borderWidth = 1
        firstTimeBtn.layer.borderColor = UIColor.titleColor.cgColor

        firstTimeBtn.widthAnchor.constraint(equalToConstant:firstTimeWidth).isActive = true
        
        return firstTimeBtn
    }()
    
    private lazy var buttonStackView: UIStackView = {
        let spacerView = UIView()
        spacerView.translatesAutoresizingMaskIntoConstraints = false
        spacerView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        let buttonStackView = UIStackView(arrangedSubviews: [
        loginBtn,
        forgetBtn,
        spacerView,
        firstTimeBtn
        ])
        
        buttonStackView.axis = .vertical
        buttonStackView.alignment = .center
        buttonStackView.spacing  = 10
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        return buttonStackView
    }()
    
    private lazy var loginStackView: UIStackView = {
        let loginStackView = UIStackView(arrangedSubviews: [
        userNameField,
        passwordField,
        ])
        
        loginStackView.axis = .vertical
        loginStackView.alignment = .center
        loginStackView.spacing = 30
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
        addSubview(buttonStackView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            logoImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            logoImage.widthAnchor.constraint(equalToConstant: 200),
            logoImage.heightAnchor.constraint(equalToConstant: 200),
            
            
            loginStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            loginStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            loginStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            loginStackView.widthAnchor.constraint(equalToConstant: -20),
            
            buttonStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonStackView.topAnchor.constraint(equalTo: loginStackView.bottomAnchor,constant: 50)
                
        ])
    }
}



