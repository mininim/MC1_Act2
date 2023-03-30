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
                   
                   
                   Group{
                       RoundedRectangle(cornerRadius: 5)
                           .fill( LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white]), startPoint: .leading, endPoint: .trailing))
                           .frame(width: 40, height: 8, alignment: .leading)
                           .offset(x: -50, y: 150)
                            

                       RoundedRectangle(cornerRadius: 5)
                           .fill( LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white]), startPoint: .leading, endPoint: .trailing))
                           .frame(width: 40, height: 8, alignment: .leading)
                           .offset(x: -50, y: 200)

                       RoundedRectangle(cornerRadius: 5)
                           .fill( LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white]), startPoint: .leading, endPoint: .trailing))
                           .frame(width: 40, height: 8, alignment: .leading)
                           .offset(x: -50, y: 800)

                       RoundedRectangle(cornerRadius: 5)
                           .fill( LinearGradient(gradient: Gradient(colors: [Color.gray, Color.white]), startPoint: .leading, endPoint: .trailing))
                           .frame(width: 40, height: 8, alignment: .leading)
                           .offset(x: -50, y: 850)

                   }
                   .offset(x: geo.size.width * 0.325)
                   
                   
               }

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView().previewInterfaceOrientation(.landscapeRight)

    }
}
