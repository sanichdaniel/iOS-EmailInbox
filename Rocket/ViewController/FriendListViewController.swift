//
//  FriendListViewController.swift
//  Rocket
//
//  Created by You Been Lee on 2020/07/26.
//  Copyright © 2020 You Been Lee. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class FriendListViewController: UIViewController {
    
    var tableView: UITableView = UITableView()
    var testData: [UserInfo] = UserInfo.friendInfo
    var titleLabel: UILabel = UILabel()
    var emailButton: UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        tableView.dataSource = self
        
        setup()
        
    }
    
    private func setup() {
        
        view.addSubview(tableView)
        view.addSubview(titleLabel)
        view.addSubview(emailButton)
        
        tableView.register(FriendProfileTableViewCell.self, forCellReuseIdentifier: "FriendProfileTableViewCell")
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(50)
            make.leading.equalToSuperview().inset(25)
        }
        titleLabel.text = "친구"
        titleLabel.font = UIFont.systemFont(ofSize: 25)
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.bottom.trailing.leading.equalToSuperview()
        }
        
        emailButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(50)
            make.trailing.equalToSuperview().inset(25)
            make.size.equalTo(25)
        }
        emailButton.setBackgroundImage(UIImage(named: "email"), for: .normal)
        emailButton.addTarget(self, action: #selector(didTapEmailButton), for: .touchUpInside)
                
    }
    
    @objc func didTapEmailButton() {
        let vc = EmailInboxViewController()
        present(vc, animated: true)
    }
    
}

extension FriendListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        testData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendProfileTableViewCell") as! FriendProfileTableViewCell
        
        cell.configure(userInfo: testData[indexPath.row])
        
        return cell
    }
}
