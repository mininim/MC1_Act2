//
//  UpdatedNewsView.swift
//  MC1_Act2_Eric
//
//  Created by Eric Lee on 2023/03/28.
//

import SwiftUI

struct UpdatedNewsView: View {
    var body: some View {
        VStack(spacing: 0){
            //MARK: - UpdatedNews Title
            HStack(spacing: 40){
                
                Text("Updated news")
                    .font(Font.custom("DungGeunMo", size: 30))
                    .foregroundColor(Color.mainOrange)
                    
                Text("todays's News")
                    .font(Font.custom("NotoSansKR-Regular", size: 20))
                    .foregroundColor(Color.gray01)

                
                Spacer()
            }
            
            
            //MARK: - Devider
            Rectangle()
                .fill(Color.gray01)
                .frame(height: 1)
                .padding([.top, .bottom], 9.55)
            
            
            
            //MARK: - News Lists
            ScrollView{
                //ScrollView 기사 제목
                
                VStack(spacing: 0){
                    
                    NavigationLink {
                        DetailView()
                    } label: {
                        NewsHeadLineView()
                    }
                    
                    NavigationLink {
                        DetailView()
                    } label: {
                        NewsHeadLineView()
                    }
                    
                    NavigationLink {
                        DetailView()
                    } label: {
                        NewsHeadLineView()
                    }
                    
                    NavigationLink {
                        DetailView()
                    } label: {
                        NewsHeadLineView()
                    }
                    
                    NavigationLink {
                        DetailView()
                    } label: {
                        NewsHeadLineView()
                    }
                    
                    NavigationLink {
                        DetailView()
                    } label: {
                        NewsHeadLineView()
                    }
                }
                
            }//ScrollView 기사 제목
            
        }
    }
}


struct NewsHeadLineView: View {
    
    var body: some View {
        
        HStack(spacing:0){
            Circle()
                .fill(Color(hex: "D9D9D9"))
                .frame(width: 5, height: 5)
                .padding([.leading, .trailing], 9.76)
            
            Text("최신글 제목이 여기에 표시될거야")
                .font(Font.custom("NotoSansKR-Regular", size: 20))
                .foregroundColor(Color.blue01)
            Spacer()
        }
        
    }
}




struct UpdatedNewsView_Previews: PreviewProvider {
    static var previews: some View {
        UpdatedNewsView()
    }
}
