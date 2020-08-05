//
//  LoginScreenViewController.swift
//  Rocket
//
//  Created by You Been Lee on 2020/07/24.
//  Copyright © 2020 You Been Lee. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class LoginScreenViewController: UIViewController, UITextFieldDelegate {
    
    var loginHeaderLabel: UILabel = UILabel()
    var idTextField: UITextField = UITextField()
    var passwordTextField: UITextField = UITextField()
    var loginButton: UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboard()
        
        view.backgroundColor = .white
        
        setup()
        
        loginHeaderLabel.text = "로그인"
        loginHeaderLabel.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 36)
        loginHeaderLabel.textColor = UIColor(red: 224/255, green: 32/255, blue: 32/255, alpha: 1)
        
        idTextField.attributedPlaceholder = NSAttributedString(string: "아이디", attributes: [.foregroundColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0.37)])
        idTextField.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 18)
        idTextField.textAlignment = .left
        idTextField.delegate = self
        idTextField.autocorrectionType = UITextAutocorrectionType.no
        idTextField.autocapitalizationType = UITextAutocapitalizationType.none
        
        
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [.foregroundColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0.37)])
        passwordTextField.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 18)
        passwordTextField.textAlignment = .left
        passwordTextField.delegate = self
        passwordTextField.autocorrectionType = UITextAutocorrectionType.no
        passwordTextField.autocapitalizationType = UITextAutocapitalizationType.none
        
        loginButton.backgroundColor = UIColor(red: 204/255, green: 36/255, blue: 36/255, alpha: 1)
        loginButton.layer.masksToBounds = true
        loginButton.layer.cornerRadius = 25
        loginButton.setTitle("로그인", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        
    }
    
    private func setup() {
        // UI Component Settings: Constraints
        
        view.addSubview(loginHeaderLabel)
        view.addSubview(idTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        
        loginHeaderLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.top.equalToSuperview().inset(34)
        }
        
        idTextField.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(149)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(20)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(idTextField.snp.bottom).offset(17)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(20)
        }
        
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(passwordTextField).offset(202)
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
        
    }
    
    
    @objc func didTapLoginButton() {
        dismiss(animated: true)
        print(idTextField.text!)
        print(passwordTextField.text!)
    }
    
    override func viewDidLayoutSubviews() {
        let idTextFieldUnderline = CALayer()
        idTextField.borderStyle = .none
        idTextFieldUnderline.frame = CGRect(x:0, y: idTextField.frame.size.height-1, width: idTextField.frame.width, height: 1)
        idTextFieldUnderline.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.37).cgColor
        idTextField.layer.addSublayer(idTextFieldUnderline)
        
        let passwordTextFieldUnderline = CALayer()
        passwordTextField.borderStyle = .none
        passwordTextFieldUnderline.frame = CGRect(x:0, y: idTextField.frame.size.height-1, width: idTextField.frame.width, height: 1)
        passwordTextFieldUnderline.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.37).cgColor
        passwordTextField.layer.addSublayer(passwordTextFieldUnderline)
        
    }
        
}

extension UIViewController {
    
    func hideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}
