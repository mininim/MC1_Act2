//
//  Color+.swift
//  MC1_Act2_Eric
//
//  Created by Eric Lee on 2023/03/28.
//

import SwiftUI

extension Color {
 
    // MARK: - orange
    static let mainOrange = Color(hex: "FF9900")
    
    // MARK: - grey
    
    static let gray01 = Color(hex: "A0A0A0")
    static let gray02 = Color(hex: "D9D9D9", opacity: 0.3)
    static let gray03 = Color(hex: "E6E6E6")
    static let gray04 = Color(hex: "959595")
    
    // MARK: - grey
    
    static let blue01 = Color(hex: "49619F")
    static let blue02 = Color(hex: "378BB0")
    
    // MARK: - black
    static let black01 = Color(hex: "323131")
    
    
}


extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
      }
    
    init(hex:String , opacity: Double){
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b, opacity: opacity)
    }
}
