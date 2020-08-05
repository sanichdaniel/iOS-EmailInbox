//
//  EmailInboxViewController.swift
//  Rocket
//
//  Created by You Been Lee on 2020/08/04.
//  Copyright © 2020 You Been Lee. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class EmailInboxViewController: UIViewController {
    
    var titleLabel: UILabel = UILabel()
    var emailInboxTableView: UITableView = UITableView()
    var testData: [EmailInboxData] = EmailInboxData.email
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        emailInboxTableView.delegate = self
        emailInboxTableView.dataSource = self
        
        setup()
        
    }
    
    private func setup() {
        
        view.addSubview(titleLabel)
        view.addSubview(emailInboxTableView)
        
        titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(10)
            make.top.equalToSuperview().inset(30)
        }
        titleLabel.text = "메일함"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 25)
        
        emailInboxTableView.register(EmailTableViewCell.self, forCellReuseIdentifier: "EmailTableViewCell")
        emailInboxTableView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(45)
            make.bottom.leading.trailing.equalToSuperview()
        }
        
    }
    
}

extension EmailInboxViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        testData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = emailInboxTableView.dequeueReusableCell(withIdentifier: "EmailTableViewCell") as! EmailTableViewCell
                
        cell.configure(emailData: testData[indexPath.row], tableView: emailInboxTableView)
        
        return cell
        
    }
    
    /*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        testData[indexPath.row].isRead = true
        print(testData[indexPath.row].isRead)
        
    }
    */
    
}
