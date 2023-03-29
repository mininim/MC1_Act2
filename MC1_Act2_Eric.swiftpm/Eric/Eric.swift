//
//  Eric.swift
//  MC1_Act2_Testing
//
//  Created by Eric Lee on 2023/03/26.
//

import SwiftUI

struct Eric: View {
    
    init(){
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "NotoSansKR-Bold", size: 20) ?? UIFont()]
    }
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                
            Image(systemName: "house") // set image here
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.black)
            
            }
        }
    }
    
    var title : Text {
        Text("Jerry’s 뇌내 망상 공간")
    }
    
    var body: some View {
        
        HStack{
            
            
            //아바타 , 이름  , 소개
            VStack(spacing: 0){
                Image("minimi")
                
                Text("Eric")
                    .padding(.top, 2.66)
                    .padding(.bottom, 21.17)
                
                Text("인사 오지게 박겠습니다")
                    .font(Font.custom("NotoSansKR-Regular", size: 20))
                    .foregroundColor(Color.blue01)
                    .padding(.top, 20.04)
                    .padding(.bottom, 18.96)
                    .padding([.leading, .trailing], 20)
                    .background(Color.gray02)
                    .cornerRadius(20)
                    .frame(width: 277.49)
                
            }
            .frame(width: 277.49)
            
            
            VStack(spacing: 0){
                Text("썰 제목을 여기에 이렇게 써봅시다 어때요?")
                    .font(Font.custom("NotoSansKR-Bold", size: 30))
                    .foregroundColor(Color.mainOrange)
                    .frame(width: 937.05)
                    .background(Color.gray03)
                    .padding(.bottom, 20)
                    
                
                Image("test")
                    .background(Color.gray03)
                
                
                Text("개인 소개는 여기서 이렇게 루룰랄ㄹ라\n개인 소개는 여기서 이렇게 루룰랄ㄹ라개인 소개는 여기서 이렇게 루룰랄ㄹ라개인 소개는 여기서 이렇게 짧게\n개인 소개는 여기서 이렇게 루룰랄ㄹ라\n개인 소개는 여기서 이렇게 루룰랄ㄹ라개인 소개는 여기\n서 이렇게 루룰랄ㄹ라개인 소개는 여기서 이렇게 짧게개인 소개는 여기서 이렇게 루룰랄ㄹ라\n개인 소개는 여기서 이렇게 루룰랄ㄹ라개인 소개는 여기서 이렇게 루\n룰랄ㄹ라개인 소개는 여기서 이렇게 짧게개인 소개는 여기서 이렇게 루룰랄ㄹ라\n개인 소개는 여기서 이렇게 루룰랄ㄹ라개인 소개는\n여기서 이렇게 루룰랄ㄹ라개인 소개는 여기서 이렇게 짧게개인 소개는 여기서 이렇게 루룰랄ㄹ라\n개인 소개는 여기서 이렇게 루룰랄ㄹ라개인 소개는 여\n기서 이렇게 루룰랄ㄹ라개인 소개랄ㄹ라개인 소개는\n여기서 이렇게 루룰랄ㄹ라개인 소개는 여기서 이렇게 짧게개인 소개는 여기서 이렇게 루룰랄ㄹ라\n기서 이렇게 루룰랄ㄹ라개인 소개는 여기서 이렇게 짧게")
                    .font(Font.custom("NotoSansKR-Regular", size: 20))
                    .foregroundColor(Color.gray01)
                    .multilineTextAlignment(.center)
                    .padding(.top, 13.95)
                
                
                
            }
            .frame(width: 937.05)
            
            

        }.padding(50)
            .navigationBarBackButtonHidden(true)
                    .navigationBarItems(leading: btnBack)
                    .navigationTitle(title)
                    .navigationBarTitleDisplayMode(.inline)
        
        
        
        
    }
    
    
}

struct Eric_Previews: PreviewProvider {
    static var previews: some View {
        Eric().previewInterfaceOrientation(.landscapeRight)
    }
}
