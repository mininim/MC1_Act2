//
//  IntroductionView.swift
//  MC1_Act2_Eric
//
//  Created by Eric Lee on 2023/03/30.
//

import SwiftUI

struct IntroductionView: View {
    var body: some View {
        HStack{
           
            Image("teamLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 85)
                .padding(.leading, 49)
                
                
            VStack(spacing: 0){
                
                HStack{
                    Text("Team 11_빡스")
                        .font(Font.custom("DungGeunMo", size: 25))
                        .foregroundColor(Color.mainOrange)
                        .padding(.leading, 20)
                    Spacer()
                }
                
                Text("우리 팀 소개는 여기서 이렇게 저러쿵 여차저차 써내려가 봅시다 우리 팀 소개는 여기서 이렇게 저러쿵 여차저차 써내려가 봅시다 우리 팀 소개는 여기서 이렇게 저러쿵 여차저차 써내려가 봅시다우리 팀 소개는 여기서 이렇게 저러쿵 여차저차")
                    .font(Font.custom("NotoSansKR-Regular", size: 20))
                    .foregroundColor(Color.blue01)
                    .padding([.top, .bottom], 13)
                    .padding([.leading, .trailing], 20)
                    .background(Color.gray02)
                    .cornerRadius(20)
                    .frame(width: 500)
                
            }
        }
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
