//
//  AccssesCode.swift
//  mentoria-iOS
//
//  Created by Valmir Garcia on 23/08/24.
//

import UIKit

final class AccessPage: UIView {
    
    private lazy var scrollView: UIScrollView = {
            let scrollView = UIScrollView()
            scrollView.translatesAutoresizingMaskIntoConstraints = false
            return scrollView
        }()
    
    private lazy var topImage: UIImageView = {
        let topImage = UIImageView(image: UIImage(named: "topArch"))
        topImage.translatesAutoresizingMaskIntoConstraints = false
        topImage.widthAnchor.constraint(equalToConstant: 400).isActive = true
        
        return topImage
    }()
    
    private lazy var logoImage: UIImageView = {
       let logoImage = UIImageView(image: UIImage(named: "logo"))
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        return logoImage
    }()
    
    private lazy var accessField: CustomTextField = {

        let title = UILabel()
        title.text = "Código de Acesso"
        title.textAlignment = .center
        title.font = .roboto(size: 14, weight: .bold)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .black
        
        let accessField = CustomTextField()
        accessField.textAlignment = .left
        accessField.font = .roboto(size: 14, weight: .regular)
        accessField.translatesAutoresizingMaskIntoConstraints = false
        accessField.borderStyle = .none
        accessField.layer.borderWidth = 0.5
        accessField.layoutMargins.left = 50
        accessField.layer.borderColor = UIColor.gray.cgColor
        accessField.layer.cornerRadius = 10
        accessField.textColor = .black
        accessField.isUserInteractionEnabled = true
        
        accessField.addSubview(title)
        
        let screenWidth = UIScreen.main.bounds.width
        
        accessField.widthAnchor.constraint(equalToConstant: screenWidth * 0.8).isActive = true
        
        NSLayoutConstraint.activate([
            title.bottomAnchor.constraint(equalTo: accessField.topAnchor, constant: -15)
        ])
            
        return accessField
    }()
    
    
    private lazy var registerBtn: UIButton = {
        let loginBtn = UIButton()
        
        let registerBtnWidth = UIScreen.main.bounds.width * 0.6
        
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.setTitle("Cadastrar", for: .normal)
        loginBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        loginBtn.titleLabel?.font = UIFont.roboto(size: 16)
        loginBtn.setTitleColor(.black, for: .normal)
        loginBtn.layer.cornerRadius = 10
        loginBtn.backgroundColor = .backGroundColor

        loginBtn.widthAnchor.constraint(equalToConstant: registerBtnWidth).isActive = true
        
        
        return loginBtn
    }()
    
    private lazy var bottomImage: UIImageView = {
        let bottomImage = UIImageView(image: UIImage(named: "bottomWave"))
        
        bottomImage.translatesAutoresizingMaskIntoConstraints = false
        
        return bottomImage
    }()
    
    private var accessFieldBottomConstraint: NSLayoutConstraint!
    private var logoImageTopConstraint: NSLayoutConstraint!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
        setupKeyboardNotifications()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupView() {
        addSubview(topImage)
        addSubview(logoImage)
        addSubview(accessField)
        addSubview(registerBtn)
        addSubview(bottomImage)
    }
    
    private func setupConstraints() {
        
        logoImageTopConstraint = logoImage.topAnchor.constraint(equalTo: topImage.bottomAnchor, constant: 88)
        accessFieldBottomConstraint = accessField.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 72)
        
        NSLayoutConstraint.activate([
            topImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            topImage.topAnchor.constraint(equalTo: topAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageTopConstraint
        ])
        
        NSLayoutConstraint.activate([
            accessField.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 72),
            accessField.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            registerBtn.topAnchor.constraint(equalTo: accessField.bottomAnchor, constant: 42),
            registerBtn.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            bottomImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 5)
        ])
    }
    
    private func setupKeyboardNotifications() {
           NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
           NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
       }

       @objc private func keyboardWillShow(notification: NSNotification) {
           if let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect {
               let keyboardHeight = keyboardFrame.height
               accessFieldBottomConstraint.constant = -keyboardHeight + 120
               logoImageTopConstraint.constant = 20
               UIView.animate(withDuration: 0.3) {
                   self.layoutIfNeeded()
               }
           }
       }

       @objc private func keyboardWillHide(notification: NSNotification) {
           accessFieldBottomConstraint.constant = 72
           logoImageTopConstraint.constant = 88
           
           UIView.animate(withDuration: 0.3) {
               self.layoutIfNeeded()
           }
       }

       deinit {
           NotificationCenter.default.removeObserver(self)
       }
    
    
   }





