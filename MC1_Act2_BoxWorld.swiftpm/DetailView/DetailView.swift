//
//  DetailView.swift
//  
//
//  Created by Eric Lee on 2023/03/30.
//

import SwiftUI

struct DetailView: View {
    @Binding var currentMember : MemberData
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
    
               GeometryReader { geo in
                   
                   ZStack{
                       
                       Image("background")
                           .resizable()
                           .ignoresSafeArea()
                       
                       HStack(spacing: 0){
                           
                           ZStack{
                               
                               WhiteCanvasView()
                               
                               VStack(spacing: 0){
                                   
                                   HStack{
                                       Image("leftbutton")
 
                                       Spacer()
                                       
                                       Image(currentMember.member.imgName)
                                       
                                       Spacer()
                                       Image("rightbutton")
                                   }
                                   .padding(.top, 60)
                                   .frame(width: 278)
                                   
                                   Text(currentMember.member.name)
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
                                       presentationMode.wrappedValue.dismiss()

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
                               .frame(width: 395,height: 938)
                           
                           DetailDiaryView()
                               .overlay{
                                   Group{
                                       RoundedRectangle(cornerRadius: 5)
                                           .fill( LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white]), startPoint: .leading, endPoint: .trailing))
                                           .frame(width: 40, height: 8, alignment: .leading)
                                           .offset(y: -300)
                                       
                                       
                                       RoundedRectangle(cornerRadius: 5)
                                           .fill( LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white]), startPoint: .leading, endPoint: .trailing))
                                           .frame(width: 40, height: 8, alignment: .leading)
                                           .offset(y: -350)
                                       
                                       RoundedRectangle(cornerRadius: 5)
                                           .fill( LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white]), startPoint: .leading, endPoint: .trailing))
                                           .frame(width: 40, height: 8, alignment: .leading)
                                           .offset(y: 300)
                                       
                                       RoundedRectangle(cornerRadius: 5)
                                           .fill( LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white]), startPoint: .leading, endPoint: .trailing))
                                           .frame(width: 40, height: 8, alignment: .leading)
                                           .offset(y: 350)
                                       
                                   }
                                   .offset(x: -455)
                               }
                               .frame(width: 915, height: 938)
                           
                           
                           
                           
                       }
                       
                   }
                   
                
                   
               }

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(currentMember: .constant(DataModal().eric)).previewInterfaceOrientation(.landscapeRight)

    }
}
