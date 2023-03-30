//
//  SwiftUIView.swift
//
//
//  Created by Eric Lee on 2023/03/30.
//

import SwiftUI

struct DetailSidebarView_Jinnie: View {

    
    var body: some View {
        
        ZStack{
            
            WhiteCanvasView()
            
            VStack(spacing: 0){
                
                Image("jinnie")
                    .padding(.top, 57)
                
                Text("Jinnie")
                    .font(Font.custom("DungGeunMo", size: 30))
                    .foregroundColor(Color.gray01)
                    .padding(.top, 12.27)
                
                DSstatusbar()
                    .padding(.top, 28.91)
                
                DScomment()
                    .padding(.top, 18.38)
                
                Spacer()
                
                Button {
                    print("홈 버툰!")

                } label: {
                    
                    
                    Text("Home")
                        .font(Font.custom("DungGeunMo", size: 24))
                        .foregroundColor(Color.mainOrange)
                        .frame(width: 224.13, height: 58.87)
                    
                    
                }.overlay {
                        
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.gray04, lineWidth: 2)
                        
                }
                .padding(.bottom, 54.43)
                

                
                
            }
            
        }

        
    }
}

//struct DScomment : View {
//
//    var body: some View{
//        HStack(spacing: 0){
//
//            Text("\n\n사이 좋은 사람\n 싸이월드 \n ^-^\n\n")                .font(Font.custom("NotoSansKR-Regular", size: 16))
//                .foregroundColor(Color.blue01)
//                .padding([.leading, .trailing], 19.96)
//                .frame(width: 277)
//
//
//
//
//        }
//        .overlay {
//
//            RoundedRectangle(cornerRadius: 3)
//                .stroke(Color.gray04, lineWidth: 2)
//
//        }
//    }
//
//}


struct DetailSidebarView_Jinnie_Previews: PreviewProvider {
    static var previews: some View {
        DetailSidebarView()
    }
}
