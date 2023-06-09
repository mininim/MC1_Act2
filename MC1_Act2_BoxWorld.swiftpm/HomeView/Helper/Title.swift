//
//  Title.swift
//  BoxWorld
//
//  Created by Greed on 2023/03/30.
//

import SwiftUI

struct Title: View {
    @Binding var currentMember: MemberData
    
    
    var body: some View {
        
        HStack {
            RoundedRectangle(cornerRadius: 5)
                .stroke(
                    Color(red: 0.627, green: 0.627, blue: 0.627), lineWidth: 1)
                .frame(width: 135, height: 50)
                .overlay(
                    Text("iFARM")
                        .font(.mo(.regular, size: 30))
                        .foregroundColor(Color.orange)
                        .onTapGesture {
                            
                            SoundPlayer.shared.stop()
                            
                        }
                    
            )
            
            
            Spacer()
            
            Button(action: {
                print("BoxWorld")
                
                SoundPlayer.shared.stop()
                currentMember = DataModal().team
                
                
                }, label: {
                Text("빡스조의 깔깔대는 나날들")
                    .font(.mo(.regular, size: 24))
                    .foregroundColor(Color.gray)
                })
                
        }
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(currentMember: .constant(DataModal().moro))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
