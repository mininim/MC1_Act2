//
//  Data.swift
//  
//
//  Created by Eric Lee on 2023/03/30.
//

import Foundation


struct Member{
    
    var id: Int
    var name : String
    var imgName : String
    var introduce : String
    
}

struct article {
    
    var id : Int
    var name: String
    var detail: String
    
}

struct MemberData {
    
    var member : Member
    var articles : [article]
    

}

final class DataModal{
    
    var team : MemberData =
    MemberData(
        member: Member(id: 0, name: "BOX", imgName: "TeamLogo", introduce: "빡스팀ºl\nCBŁ과정ºl 추억을 담은\nㅁıLI홈ㅍıøłl 오신걸 환영합LI⊂ト!\n방ㄱr방ㄱr ㈛○l루\n(--)(__)(--)(__) )"),
                       
        articles: [
        article(id: 0, name: "이런 짜란다를 바란게 아닌데,,,,?", detail: "이런 짜란다를 바란게 아닌데,,,,?내용"),
        article(id: 1, name: "지니는 공주병 말기인거 같다", detail: "지니는 공주병 말기인거 같다 내용 "),
        article(id: 2, name: "난 지금 미쳐가고 있다. 이 헤드폰에 내 모든 몸과 영혼을...", detail: "난 지금 미쳐가고 있다. 이 헤드폰에 내 모든 몸과 영혼을... 내용ㅇ요요요요"),
        article(id: 3, name: "사람이 어떻게 그래요?", detail: "사람이 어떻게 그래요? 내용"),
        article(id: 4, name: "3테크 1디자인 1도메인 1일반인", detail: "3테크 1디자인 1도메인 1일반인의 내요요요용"),
        article(id: 5, name: "커닝시티 뒷골목의 지니...일요일! 지니는 오랜만에 친구들...", detail: "커닝시티 뒷골목의 지니...일요일! 지니는 오랜만에 친구들... 내요요요용")
        
        ])
    
    
   
    
    var jerry : MemberData =
    MemberData(
        member: Member(id: 1, name: "JERRY", imgName: "jerry", introduce:"     ② えr 7r 요˚˚˚.  우ㄹ1˚˚˚.\n    저 ② えr 조 0r  ㅎH 여˚˚˚."),
        
        articles: [
            
        article(id: 0, name: "3테크 1디자인 1도메인 1일반인", detail: "3테크 1디자인 1도메인 1일반인 아애내내애애요요요요"),
        article(id: 1, name: "그리드의 옷 욕심 거의 매일 그리드는 옷 사진을 가져와서...", detail: "그리드의 옷 욕심 거의 매일 그리드는 옷 사진을 가져와서... 내용 내용 "),
        article(id: 2, name: "므엥 여러분 2차 가줘요", detail: "므엥 여러분 2차 가줘요 내용ㅇ요요요요"),
        article(id: 3, name: "제리의 회고", detail: "제리의 회고 내용")
        
        ])
    
    
    var moana : MemberData =
    MemberData(
        member: Member(id: 0, name: "MOANA", imgName: "moana", introduce: "우쭈쭈ぁĦ줘요"),
        
        articles: [
            
        article(id: 0, name: "이런 짜란다를 바란게 아닌데,,,?", detail: "3테크 1디자인 1도메인 1일반인 아애내내애애요요요요"),
        article(id: 1, name: "그리드는 날 싫어해, 아니 모두를 싫어하나 오늘도 그리드는 ...", detail: "그리드의 옷 욕심 거의 매일 그리드는 옷 사진을 가져와서... 내용 내용 "),
        article(id: 2, name: "모아나의 10문 10답", detail: "므엥 여러분 2차 가줘요 내용ㅇ요요요요"),
        article(id: 3, name: "무례함의 인식?", detail: "제리의 회고 내용"),
        article(id: 4, name: "지니공주에게 감명받은 무수리 모아나", detail: "제리의 회고 내용")
        
        ])
    
    var moro : MemberData =
    MemberData(
        member: Member(id: 0, name: "MORO", imgName: "moro", introduce: "ㅉr란⊂ト ㅉr란⊂ト"),
        
        articles: [
            
        article(id: 0, name: "밥 맛 없는 모로(1)", detail: "3테크 1디자인 1도메인 1일반인 아애내내애애요요요요"),
        article(id: 1, name: "가디의 팀11 조종론", detail: "그리드의 옷 욕심 거의 매일 그리드는 옷 사진을 가져와서... 내용 내용 "),
        article(id: 2, name: "나에게… 헤드폰이란", detail: "므엥 여러분 2차 가줘요 내용ㅇ요요요요"),
        article(id: 3, name: "SwiftUI 커스텀 폰트 추가하는 법", detail: "제리의 회고 내용")
        
        
        ])
    
    

    
    
    var eric : MemberData =
    MemberData(
        member: Member(id: 0, name: "ERIC", imgName: "eric", introduce: "バr람○l øł떻つㅓl\nュ럴 수 있죠?"),
        
        articles: [
            
        article(id: 0, name: "벌써 3주차? 한 2주정도 있었던 것 같은데? (실제로 2주...", detail: "벌써 3주차? 한 2주정도 있었던 것 같은데? (실제로 2주... 아애내내애애요요요요"),
        article(id: 1, name: "여기는 정글(빡스팀의 대화 양과 속도가 엄청나서 따라가기...", detail: "여기는 정글(빡스팀의 대화 양과 속도가 엄청나서 따라가기... \n 내용 내용 "),
        article(id: 2, name: "사람이 어떻게 그래요?", detail: "사람이 어떻게 그래요? 내용ㅇ요요요요"),
        article(id: 3, name: "발표는 모아나가 할게요!", detail: "사람이 어떻게 그래요? 내용")
        
        ])
    
    var jinnie : MemberData =
    MemberData(
        member: Member(id: 0, name: "JINNIE", imgName: "jinnie", introduce: "ㅇr… 숙취…"),
        
        articles: [
            
        article(id: 0, name: "난 곤듀니까^^", detail: "3테크 1디자인 1도메인 1일반인 아애내내애애요요요요"),
        article(id: 1, name: "커닝시티 뒷골목의 지니..", detail: "그리드의 옷 욕심 거의 매일 그리드는 옷 사진을 가져와서... 내용 내용 "),
        article(id: 2, name: "힘줘!", detail: "므엥 여러분 2차 가줘요 내용ㅇ요요요요"),
        article(id: 3, name: "싸이감성,,여자가,,담배를 피는 이유?", detail: "제리의 회고 내용")
        
        
        ])
    
    var greed : MemberData =
    MemberData(
        member: Member(id: 0, name: "GREED", imgName: "greed", introduce: "ズlLI 충격발언…\n\n일단 ぁĦ요"),
        
        articles: [
            
        article(id: 0, name: "지니는 공주병 말기인거 같다.", detail: "3테크 1디자인 1도메인 1일반인 아애내내애애요요요요"),
        article(id: 1, name: "수영장 샤워실에는 아이디어가 떠다녀", detail: "그리드의 옷 욕심 거의 매일 그리드는 옷 사진을 가져와서... 내용 내용 "),
        article(id: 2, name: "빡스와 함께하며", detail: "므엥 여러분 2차 가줘요 내용ㅇ요요요요")
        
    
        ])
    
}


