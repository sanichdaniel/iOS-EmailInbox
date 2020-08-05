//
//  FriendProfileTableViewCell.swift
//  Rocket
//
//  Created by You Been Lee on 2020/07/26.
//  Copyright © 2020 You Been Lee. All rights reserved.
//

import Foundation
import UIKit

class FriendProfileTableViewCell: UITableViewCell {
    var profileImage: UIImageView = UIImageView()
    let stackView = UIStackView()
    var userNameLabel: UILabel = UILabel()
    var statusMessageLabel: UILabel = UILabel()
    var profileMusicButton: UIButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        
        // cell에다가 UI Component 추가(addSubview)헤줄 때는 call의 contentView에 추가해야한다
        contentView.addSubview(profileImage)
        contentView.addSubview(stackView)
        contentView.addSubview(userNameLabel)
        contentView.addSubview(statusMessageLabel)
        contentView.addSubview(profileMusicButton)
        
        profileImage.snp.makeConstraints { make in
            make.leading.top.bottom.equalToSuperview().inset(10)
            make.size.equalTo(50)
        }
        profileImage.contentMode = .scaleAspectFill
        profileImage.layer.masksToBounds = true
        profileImage.layer.cornerRadius = 20

        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.snp.makeConstraints{ make in
            make.leading.equalTo(profileImage.snp.trailing).offset(10)
            make.centerY.equalToSuperview()
            make.width.lessThanOrEqualTo(UIScreen.main.bounds.width/2)
        }
        stackView.addArrangedSubview(userNameLabel)
        stackView.addArrangedSubview(statusMessageLabel)
        
        userNameLabel.font = UIFont.defaultLargeFont
        userNameLabel.textColor = .black
        statusMessageLabel.font = UIFont.defaultFont
        statusMessageLabel.textColor = UIColor.black.withAlphaComponent(0.5)
        
        profileMusicButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(10)
            make.leading.equalTo(stackView.snp.trailing).offset(20).priority(.medium)
            make.centerY.equalToSuperview()
            make.width.lessThanOrEqualTo(UIScreen.main.bounds.width/3)
        }
        profileMusicButton.layer.masksToBounds = true
        profileMusicButton.layer.cornerRadius = 11
        profileMusicButton.layer.borderWidth = 1
        profileMusicButton.layer.borderColor = UIColor(red: 45/255, green: 180/255, blue: 0, alpha: 1).cgColor
        profileMusicButton.backgroundColor = .white
        profileMusicButton.setTitleColor(.black, for: .normal)
        profileMusicButton.titleLabel?.font = UIFont.defaultFont
        profileMusicButton.setContentHuggingPriority(.required, for: .horizontal)
        profileMusicButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        
    }
    
    func configure(userInfo: UserInfo) {
        
        profileImage.image = userInfo.profileImage
        
        userNameLabel.text = userInfo.userName
        
        statusMessageLabel.text = userInfo.statusMessage
        
        if userInfo.profileMusic == nil {
            profileMusicButton.isHidden = true
        }
        else {
            // reuse 때문에 꼭 히든 해제해줘야됨!
            profileMusicButton.isHidden = false
            profileMusicButton.setTitle(userInfo.profileMusic, for: .normal)
        }
        
    }
    
}
