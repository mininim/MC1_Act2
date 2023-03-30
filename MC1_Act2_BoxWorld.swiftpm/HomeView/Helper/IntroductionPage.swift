//
//  IntroductionPage.swift
//  BoxWorld
//
//  Created by Greed on 2023/03/30.
//

import SwiftUI

struct IntroductionPage: View {
    @Binding var currentMember : MemberData
    
    var body: some View {
        HStack(spacing: 35.31) {
            
            NavigationLink(destination: TeamInformation()){
                
                Image(currentMember.member.name == "BOX" ? "TeamLogo":  "\(currentMember.member.imgName)onBox")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 85)
                
            }
            
                VStack {
                    Text(currentMember.member.name == "BOX" ? "Team 11_빡스":  "\(currentMember.member.name)'s self introduction")
                        .font(.mo(.regular, size: 24))
                        .foregroundColor(Color.orange)
                        .frame(width: 530, height: 24, alignment: .leading)
                    
                    GroupBox(){
                        Text(currentMember.member.introduce)
                            .font(.noto(.regular, size: 20))
                            .foregroundColor(Color(hex: 0x49619F))
                            .padding(10)
                            .frame(width: 498.19, height: 200, alignment: .topLeading)
                    }
                
                
                }
                
        }
    }
}

struct IntroductionPage_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionPage(currentMember: .constant(DataModal().moro))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

