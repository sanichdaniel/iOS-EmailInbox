//
//  EmailInboxData.swift
//  Rocket
//
//  Created by You Been Lee on 2020/08/04.
//  Copyright © 2020 You Been Lee. All rights reserved.
//

import Foundation
import UIKit

struct EmailInboxData {
    
    var user: String?
    var title: String
    var content: String
    var documents: String?
    var isRead: Bool = false
    
}

extension EmailInboxData {
    
    static var email: [EmailInboxData] = [
    
        EmailInboxData(user: "I", title: "Instagram", content: "이번주 놓친 소식들을 확인해보세요!", isRead: true) ,
        EmailInboxData(title: "스팸메일", content: "스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어") ,
        EmailInboxData(user: "S", title: "서울대학교 컴퓨터공학부", content: "다음 학기에 열리는 수업입니다. 자료 참고하세요.", documents: "자료.pdf") ,
        EmailInboxData(user: "K", title: "조교님", content: "과제 얼른 제출해주세요. 과제 얼른 제출해주세요. 과제 얼른 제출해주세요. 과제 얼른 제출해주세요. 과제 얼른 제출해주세요.") ,
        EmailInboxData(user: "G", title: "GitHub", content: "Welcome to GitHub!") ,
        EmailInboxData(title: "동기들이랑 팀플~", content: "피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄", documents: "피피티.pptx", isRead: true) ,
        EmailInboxData(user: "Y", title: "자료조사", content: "파일깨짐주의", documents: "jfkljfkwlejkljdskljflksldkjekljfkljfkwlejkljdskljflksldkjekljfkljfkwlejkljdskljflksldkjekl.pptx", isRead: true) ,
        EmailInboxData(user: "I", title: "Instagram", content: "이번주 놓친 소식들을 확인해보세요!") ,
        EmailInboxData(title: "스팸메일", content: "스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어") ,
        EmailInboxData(user: "S", title: "서울대학교 컴퓨터공학부", content: "다음 학기에 열리는 수업입니다. 자료 참고하세요.", documents: "자료.pdf") ,
        EmailInboxData(user: "K", title: "조교님", content: "과제 얼른 제출해주세요. 과제 얼른 제출해주세요. 과제 얼른 제출해주세요. 과제 얼른 제출해주세요. 과제 얼른 제출해주세요.") ,
        EmailInboxData(user: "G", title: "GitHub", content: "Welcome to GitHub!", isRead: true) ,
        EmailInboxData(title: "동기들이랑 팀플~", content: "피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄", documents: "피피티.pptx") ,
        EmailInboxData(user: "Y", title: "자료조사", content: "파일깨짐주의", documents: "jfkljfkwlejkljdskljflksldkjekljfkljfkwlejkljdskljflksldkjekljfkljfkwlejkljdskljflksldkjekl.pptx") ,
        EmailInboxData(user: "I", title: "Instagram", content: "이번주 놓친 소식들을 확인해보세요!", isRead: true) ,
        EmailInboxData(title: "스팸메일", content: "스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어 스팸은 맛있어") ,
        EmailInboxData(user: "S", title: "서울대학교 컴퓨터공학부", content: "다음 학기에 열리는 수업입니다. 자료 참고하세요.", documents: "자료.pdf") ,
        EmailInboxData(user: "K", title: "조교님", content: "과제 얼른 제출해주세요. 과제 얼른 제출해주세요. 과제 얼른 제출해주세요. 과제 얼른 제출해주세요. 과제 얼른 제출해주세요.", isRead: true) ,
        EmailInboxData(user: "G", title: "GitHub", content: "Welcome to GitHub!") ,
        EmailInboxData(title: "동기들이랑 팀플~", content: "피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄 피피티 완성! 캬컄", documents: "피피티.pptx", isRead: true) ,
        EmailInboxData(user: "Y", title: "자료조사", content: "파일깨짐주의", documents: "jfkljfkwlejkljdskljflksldkjekljfkljfkwlejkljdskljflksldkjekljfkljfkwlejkljdskljflksldkjekl.pptx")
        
    ]
    
}
