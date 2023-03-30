//
//  MainView.swift
//  MC1_Act2_Eric
//
//  Created by Eric Lee on 2023/03/30.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            
            
            
            NavigationView {
                
                VStack(spacing: 0){
                    HStack(alignment: .top, spacing: 0){
                                            
                        UpdatedNewsView()
                            .frame(width: 532.67)
                            
                        IntroductionView()
                            .frame(width: 618)
                        
                        
                    }//HStack 오늘의 뉴스  - 아바타 -  자기소개
                    .frame(height: 251)
                    
                    
                    HStack(){ // IFarm , 소개
                        
                        
                        Button {
                            print("IFarm")
                        } label: {
                            Text("IFarm")
                                .font(Font.custom("DungGeunMo", size: 30))
                                .foregroundColor(Color.mainOrange)
                                .padding(.leading, 24.5)
                                .padding(.trailing, 35.5)
                                .padding(.top, 11)
                                .padding(.bottom, 8)
                                .frame(width: 135 , height: 53)
                            
                                .overlay {
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.gray01, lineWidth: 1)
                                        .offset(x: 1.5, y: 3)
                                }
                            
                            
                            
                        }
                        
                        Spacer()
                        
                        
                        Text("우리팀의 정보를 어쩌구 저쩌구 홈피이름으로 표현")
                            .font(Font.custom("NotoSansKR-Regular", size: 24))
                            .foregroundColor(Color.gray01)
                        
                        
                    } // HStack - IFarm , 소개
                    .frame(height: 50)
                    
                    
                    Image("miniroomwithminimi")
                        .resizable()
                        .scaledToFit()
                        .overlay {
                            Rectangle()
                                .stroke(Color.gray01, lineWidth: 1)
                        }
                    
                    
                    
                }//Vstack
                .frame(width: 1229)
                
            }//Navigation view
            .navigationViewStyle(StackNavigationViewStyle())
            
            
            
        }   
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().previewInterfaceOrientation(.landscapeRight)
    }
}
