//
//  UserInfo.swift
//  Rocket
//
//  Created by You Been Lee on 2020/07/26.
//  Copyright © 2020 You Been Lee. All rights reserved.
//

import Foundation
import UIKit

struct UserInfo {
    
    var profileImage: UIImage? = UIImage(named: "purplePerson")
    var userName: String
    var statusMessage: String?
    var profileMusic: String?
    
}

extension UserInfo {
    static var myInfo: UserInfo = UserInfo(profileImage: UIImage(named: "profilePicture"), userName: "이유빈", statusMessage: "...", profileMusic: "그날의 너")
    
    static var friendInfo: [UserInfo] = [
        UserInfo(userName: "강다니엘", statusMessage: "워너원", profileMusic: "에너제틱"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person5"), userName: "홍길동", statusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person1"), userName: "아이유", statusMessage: "너랑 나랑은 지금 안 되지", profileMusic: "시간의 바깥"),
        UserInfo(profileImage: UIImage(named: "person10"), userName: "유재석", statusMessage: "팬입니다", profileMusic: "압구정 날라리"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니바니바니바니바니바니바니바니바니바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼하늘에서 내려온 토끼하늘에서 내려온 토끼하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근", profileMusic: "하늘에서 내려온 토끼"),
        
        // break
        UserInfo(userName: "강다니엘", statusMessage: "워너원", profileMusic: "에너제틱"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person5"), userName: "홍길동", statusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person1"), userName: "아이유", statusMessage: "너랑 나랑은 지금 안 되지", profileMusic: "시간의 바깥"),
        UserInfo(profileImage: UIImage(named: "person10"), userName: "유재석", statusMessage: "팬입니다", profileMusic: "압구정 날라리"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니바니바니바니바니바니바니바니바니바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼하늘에서 내려온 토끼하늘에서 내려온 토끼하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(userName: "강다니엘", statusMessage: "워너원", profileMusic: "에너제틱"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person5"), userName: "홍길동", statusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person1"), userName: "아이유", statusMessage: "너랑 나랑은 지금 안 되지", profileMusic: "시간의 바깥"),
        UserInfo(profileImage: UIImage(named: "person10"), userName: "유재석", statusMessage: "팬입니다", profileMusic: "압구정 날라리"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니바니바니바니바니바니바니바니바니바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼하늘에서 내려온 토끼하늘에서 내려온 토끼하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(userName: "강다니엘", statusMessage: "워너원", profileMusic: "에너제틱"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person5"), userName: "홍길동", statusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person1"), userName: "아이유", statusMessage: "너랑 나랑은 지금 안 되지", profileMusic: "시간의 바깥"),
        UserInfo(profileImage: UIImage(named: "person10"), userName: "유재석", statusMessage: "팬입니다", profileMusic: "압구정 날라리"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니바니바니바니바니바니바니바니바니바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼하늘에서 내려온 토끼하늘에서 내려온 토끼하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(userName: "강다니엘", statusMessage: "워너원", profileMusic: "에너제틱"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person5"), userName: "홍길동", statusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person1"), userName: "아이유", statusMessage: "너랑 나랑은 지금 안 되지", profileMusic: "시간의 바깥"),
        UserInfo(profileImage: UIImage(named: "person10"), userName: "유재석", statusMessage: "팬입니다", profileMusic: "압구정 날라리"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니바니바니바니바니바니바니바니바니바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근", profileMusic: "하늘에서 내려온 토끼하늘에서 내려온 토끼하늘에서 내려온 토끼하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니", statusMessage: "당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니바니바니바니바니바니바니바니바니바니바니바니바니", statusMessage: "당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근", profileMusic: "하늘에서 내려온 토끼"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "바니바니바니바니바니바니바니바니바니바니바니바니바니바니바니바니", statusMessage: "당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근당근", profileMusic: "하늘에서 내려온 토끼하늘에서 내려온 토끼하늘에서 내려온 토끼하늘에서 내려온 토끼하늘에서 내려온 토끼하늘에서 내려온 토끼")

    ]
}
