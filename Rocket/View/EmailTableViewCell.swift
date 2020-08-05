//
//  EmailTableViewCell.swift
//  Rocket
//
//  Created by You Been Lee on 2020/08/04.
//  Copyright © 2020 You Been Lee. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class EmailTableViewCell: UITableViewCell {
    
    var userButton: UIButton = UIButton()
    let stackView: UIStackView = UIStackView()
    var titleLabel: UILabel = UILabel()
    var contentLabel: UILabel = UILabel()
    var documentsButton: UIButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        
        contentView.addSubview(userButton)
        contentView.addSubview(stackView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(contentLabel)
        contentView.addSubview(documentsButton)
        
        userButton.snp.makeConstraints { make in
            make.leading.top.equalToSuperview().inset(10)
            make.size.equalTo(40)
        }
        userButton.backgroundColor = UIColor.random()
        userButton.setTitleColor(.white, for: .normal)
        userButton.layer.masksToBounds = true
        userButton.layer.cornerRadius = 20
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(userButton.snp.top)
            make.leading.equalTo(userButton.snp.trailing).offset(15)
            make.trailing.equalToSuperview().inset(30)
        }
        stackView.axis = .vertical
        stackView.spacing = 1
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(contentLabel)
                
        contentLabel.font = UIFont.defaultLargeFont
        contentLabel.textColor = UIColor.black.withAlphaComponent(0.5)
        contentLabel.numberOfLines = 2
        
        documentsButton.snp.makeConstraints { make in
            make.top.equalTo(contentLabel.snp.bottom).offset(5)
            make.leading.equalTo(contentLabel.snp.leading)
            make.width.lessThanOrEqualTo(300)
            make.height.equalTo(20)
        }
        documentsButton.layer.masksToBounds = true
        documentsButton.layer.cornerRadius = 11
        documentsButton.layer.borderWidth = 1
        documentsButton.layer.borderColor = UIColor.black.withAlphaComponent(0.5).cgColor
        documentsButton.setTitleColor(UIColor.black.withAlphaComponent(0.5), for: .normal)
        documentsButton.titleLabel?.font = UIFont.defaultLargeFont
        documentsButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        
    }
    
    func configure(emailData: EmailInboxData, tableView: UITableView) {
        
        if emailData.user == nil {
            userButton.setTitle("?", for: .normal)
        }
        else {
            userButton.setTitle(emailData.user, for: .normal)
        }
        
        titleLabel.text = emailData.title
        
        contentLabel.text = emailData.content
        
        if emailData.documents == nil {
            documentsButton.isHidden = true
            tableView.rowHeight = 75
        }
        else {
            documentsButton.isHidden = false
            documentsButton.setTitle(emailData.documents, for: .normal)
            tableView.rowHeight = 100
        }
        
        if emailData.isRead == true {
            titleLabel.font = UIFont.systemFont(ofSize: 18)
            titleLabel.textColor = UIColor.black.withAlphaComponent(0.5)
        }
        else {
            titleLabel.font = UIFont.boldSystemFont(ofSize: 18)
            titleLabel.textColor = .black

        }
        
    }
    
}
