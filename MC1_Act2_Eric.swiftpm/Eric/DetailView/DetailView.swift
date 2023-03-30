//
//  DetailView.swift
//  
//
//  Created by Eric Lee on 2023/03/30.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
    
               GeometryReader { geo in
                   
                   ZStack{
                       
                       Image("mainbackground")
                           .resizable()
                           .ignoresSafeArea()
                       
                       HStack(spacing: 0){
                           
                           DetailSidebarView()
                               .frame(width: 395,height: 938)
                           
                           DetailDiaryView()
                               .frame(width: 915, height: 938)
                           
                           
                           

                       }
                       
                   }
                   
                   
                   
                   
                   
                   //스프링
//                   Group{
//                       RoundedRectangle(cornerRadius: 5)
//                           .fill( LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white]), startPoint: .leading, endPoint: .trailing))
//                           .frame(width: 75, height: 10, alignment: .leading)
//                           .offset(y: geo.size.height * 0.2)
//
//                       RoundedRectangle(cornerRadius: 5)
//                           .fill( LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white]), startPoint: .leading, endPoint: .trailing))
//                           .frame(width: 75, height: 10, alignment: .leading)
//                           .offset(y: geo.size.height * 0.15)
//
//                       RoundedRectangle(cornerRadius: 5)
//                           .fill( LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white]), startPoint: .leading, endPoint: .trailing))
//                           .frame(width: 75, height: 10, alignment: .leading)
//                           .offset(y: geo.size.height * 0.85)
//
//                       RoundedRectangle(cornerRadius: 5)
//                           .fill( LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white]), startPoint: .leading, endPoint: .trailing))
//                           .frame(width: 75, height: 10, alignment: .leading)
//                           .offset(y: geo.size.height * 0.90)
//
//                   }
//                   .offset(x: geo.size.width * 0.325)
                   
                   
               }

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView().previewInterfaceOrientation(.landscapeRight)

    }
}
