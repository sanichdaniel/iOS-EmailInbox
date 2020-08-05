//
//  ViewController.swift
//  Rocket
//
//  Created by You Been Lee on 2020/07/24.
//  Copyright © 2020 You Been Lee. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var rocketLabel: UILabel = UILabel()
    var welcomeHeaderLabel: UILabel = UILabel()
    var welcomeSubheaderLabel: UILabel = UILabel()
    var loginButton: UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        setup()
        
        rocketLabel.text = "🚀"
        rocketLabel.font = UIFont.systemFont(ofSize: 72)
        rocketLabel.textAlignment = .center
        
        welcomeHeaderLabel.text = "Welcome To Rocket"
        welcomeHeaderLabel.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 30)
        welcomeHeaderLabel.textColor = UIColor(red: 217/255, green: 68/255, blue: 68/255, alpha: 1)
        
        welcomeSubheaderLabel.numberOfLines = 2
        welcomeSubheaderLabel.lineBreakMode = .byWordWrapping
        welcomeSubheaderLabel.text = "반가워요\n어려웠던 iOS 쉽게 도와드릴게요"
        welcomeSubheaderLabel.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 17)
        welcomeSubheaderLabel.textAlignment = .center
        
        loginButton.backgroundColor = UIColor(red: 204/255, green: 36/255, blue: 36/255, alpha: 1)
        loginButton.layer.masksToBounds = true
        loginButton.layer.cornerRadius = 25
        loginButton.setTitle("로그인", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
                
    }
    
    private func setup() {
        // UI Component Settings: Constraints
        
        view.addSubview(rocketLabel)
        view.addSubview(welcomeHeaderLabel)
        view.addSubview(welcomeSubheaderLabel)
        view.addSubview(loginButton)
        
        rocketLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(153)
            make.width.equalTo(275)
            make.height.equalTo(80)
        }
        
        welcomeHeaderLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(rocketLabel.snp.bottom).offset(37)
        }
        
        welcomeSubheaderLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(rocketLabel.snp.bottom).offset(98)
            make.width.equalTo(221)
            make.height.equalTo(42)
        }
        
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(welcomeSubheaderLabel).offset(57)
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
        
    }
    
    @objc func didTapLoginButton() {
        let vc = LoginScreenViewController()
        present(vc, animated: true)
    }

}

