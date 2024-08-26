//
//  NewLoginPage.swift
//  mentoria-iOS
//
//  Created by Valmir Garcia on 19/08/24.
//

import UIKit

class CustomTextField: UITextField {
    let padding = UIEdgeInsets(top: 5, left: 15, bottom: 5, right: 15)

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}

final class NewLoginPage: UIView {
    
    private lazy var scrollView: UIScrollView = {
            let scrollView = UIScrollView()
            scrollView.translatesAutoresizingMaskIntoConstraints = false
            return scrollView
        }()

    
    private lazy var logoImage: UIImageView = {
        let logoImage = UIImageView(image: UIImage(named: "TopImage.svg"))
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.widthAnchor.constraint(equalToConstant: 400).isActive = true
        
        return logoImage
    }()
    
    private lazy var userNameField: CustomTextField = {

        let title = UILabel()
        title.text = "Usuário"
        title.textAlignment = .center
        title.font = .roboto(size: 14, weight: .bold)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .black
        
        let userNameField = CustomTextField()
        userNameField.textAlignment = .left
        userNameField.font = .roboto(size: 14, weight: .regular)
        userNameField.translatesAutoresizingMaskIntoConstraints = false
        userNameField.borderStyle = .none
        userNameField.layer.borderWidth = 0.5
        userNameField.layoutMargins.left = 50
        userNameField.layer.borderColor = UIColor.gray.cgColor
        userNameField.layer.cornerRadius = 10
        userNameField.textColor = .black
        userNameField.isUserInteractionEnabled = true
        
        userNameField.addSubview(title)
        
        let screenWidth = UIScreen.main.bounds.width
        
        userNameField.widthAnchor.constraint(equalToConstant: screenWidth * 0.8).isActive = true
        
        NSLayoutConstraint.activate([
            title.bottomAnchor.constraint(equalTo: userNameField.topAnchor, constant: -15)
        ])
            
        return userNameField
    }()
    
    private lazy var passwordField: CustomTextField = {
        let title = UILabel()
        title.text = "Senha"
        title.textAlignment = .center
        title.font = .roboto(size: 14, weight: .bold)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .black
        
        
        let passwordField = CustomTextField()
        passwordField.isSecureTextEntry = true
        passwordField.textAlignment = .left
        passwordField.font = .systemFont(ofSize: 14, weight: .regular)
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.borderStyle = .none
        passwordField.layer.borderWidth = 0.5
        passwordField.layer.borderColor = UIColor.gray.cgColor
        passwordField.layer.cornerRadius = 10
        passwordField.textColor = .black
        userNameField.isUserInteractionEnabled = true
        
        let screenWidth = UIScreen.main.bounds.width
        
        passwordField.widthAnchor.constraint(equalToConstant: screenWidth * 0.8).isActive = true
         
        passwordField.addSubview(title)

        
        NSLayoutConstraint.activate([
            title.bottomAnchor.constraint(equalTo: passwordField.topAnchor, constant: -15)
        ])
        return passwordField
    }()
    
    private lazy var loginBtn: UIButton = {
        let loginBtn = UIButton()
        
        let loginBtnWidth = UIScreen.main.bounds.width * 0.6
        
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.setTitle("Login", for: .normal)
        loginBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        loginBtn.titleLabel?.font = UIFont.roboto(size: 16)
        loginBtn.setTitleColor(.black, for: .normal)
        loginBtn.layer.cornerRadius = 10
        loginBtn.backgroundColor = .backGroundColor

        loginBtn.widthAnchor.constraint(equalToConstant: loginBtnWidth).isActive = true
        
        
        return loginBtn
    }()
    
    private lazy var forgetBtn: UIButton = {
        let forgetBtn = UIButton()
        forgetBtn.translatesAutoresizingMaskIntoConstraints = false
        forgetBtn.setTitle("Esqueceu a senha?", for: .normal)
        forgetBtn.titleLabel?.font = UIFont.roboto(size: 12)
        forgetBtn.setTitleColor(.black, for: .normal)
        forgetBtn.layer.cornerRadius = 25
        forgetBtn.backgroundColor = .clear
        
        return forgetBtn
    }()
    
    private lazy var firstTimeBtn: UIButton = {
        let firstTimeBtn = UIButton()
        
        let firstTimeWidth: CGFloat = 250
        
        firstTimeBtn.translatesAutoresizingMaskIntoConstraints = false
        firstTimeBtn.setTitle("Primeiro Acesso", for: .normal)
        firstTimeBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        firstTimeBtn.setTitleColor(.black, for: .normal)
        firstTimeBtn.titleLabel?.font = UIFont.roboto(size: 16)
        firstTimeBtn.layer.cornerRadius = 10
        firstTimeBtn.backgroundColor = .backGroundColor
        firstTimeBtn.layer.cornerRadius = 10

        firstTimeBtn.widthAnchor.constraint(equalToConstant:firstTimeWidth).isActive = true
        
        return firstTimeBtn
    }()
    
    private lazy var buttonStackView: UIStackView = {
    
        let buttonStackView = UIStackView(arrangedSubviews: [
        loginBtn,
        forgetBtn,
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
        loginStackView.spacing = 50
        loginStackView.translatesAutoresizingMaskIntoConstraints = false
        return loginStackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupView() {
        addSubview(scrollView)
        scrollView.addSubview(logoImage)
        scrollView.addSubview(loginStackView)
        scrollView.addSubview(buttonStackView)
        scrollView.addSubview(firstTimeBtn)
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
                    scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
                    scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
                    scrollView.topAnchor.constraint(equalTo: topAnchor),
                    scrollView.bottomAnchor.constraint(equalTo: bottomAnchor)
                ])
        
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            loginStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            loginStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            loginStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            loginStackView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 50)
        ])
        
        NSLayoutConstraint.activate([
            buttonStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonStackView.topAnchor.constraint(equalTo: loginStackView.bottomAnchor,constant: 50),
            forgetBtn.widthAnchor.constraint(equalTo: loginBtn.widthAnchor, multiplier: 0.5),
        ])
        
        NSLayoutConstraint.activate([
            firstTimeBtn.topAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 60),
            firstTimeBtn.centerXAnchor.constraint(equalTo: centerXAnchor)
                
        ])
    }
}



