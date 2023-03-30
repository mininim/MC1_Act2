//
//  SwiftUIView.swift
//  
//
//  Created by Eric Lee on 2023/03/30.
//

import SwiftUI

struct WhiteCanvasView: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 5)
            
            .stroke(
             .white,
             style: StrokeStyle(
                 lineWidth: 2,
                 lineCap: .square,
                 lineJoin: .miter,
                 dash: [3,6],
                 dashPhase: 0
             )
            )
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(
                     Color.gray04)
                    .padding(9)
                
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.white)
                    .padding(10)
            }
        
        
    }
}

struct WhiteCanvasView_Previews: PreviewProvider {
    static var previews: some View {
        WhiteCanvasView().previewInterfaceOrientation(.landscapeRight)
    }
}
