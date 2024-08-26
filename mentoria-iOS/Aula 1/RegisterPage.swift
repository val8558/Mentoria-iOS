
//  AccssesCode.swift
//  mentoria-iOS
//
//  Created by Valmir Garcia on 23/08/24.
//

import UIKit

final class RegisterPage: UIView {
    
    
    private lazy var nameField: CustomTextField = {

        let title = UILabel()
        title.text = "Nome"
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupView() {
        addSubview(nameField)
        addSubview(registerBtn)
        addSubview(bottomImage)
    }
    
    private func setupConstraints() {
        
        
        NSLayoutConstraint.activate([
            registerBtn.topAnchor.constraint(equalTo: nameField.bottomAnchor, constant: 42),
            registerBtn.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            bottomImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 5)
        ])
    }
}





