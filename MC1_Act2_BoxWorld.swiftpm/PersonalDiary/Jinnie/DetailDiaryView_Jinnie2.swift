//
//  SwiftUIView.swift
//
//
//  Created by Eric Lee on 2023/03/30.
//

import SwiftUI

struct DetailDiaryView_Jinnie2: View {
    @State
    var currentDate: Int = 14
    
    var body: some View {
        
        ZStack{
            
            WhiteCanvasView()
            
            
            
            //위에 날짜 뷰
            VStack{
            
                VStack{
                    HStack(spacing: 0){
                        
                        
                        VStack(spacing: 0){
                            
                            
                            Text("MC1")
                                .font(Font.custom("DungGeunMo", size: 64))
                                .foregroundColor(Color.blue02)
                            
                            Text(currentDate < 15 ? "part1" : "part2")
                                .font(Font.custom("DungGeunMo", size: 20))
                                .foregroundColor(Color.gray01)
                                .offset(y: -7)
                            
                        }
                        .frame(width: 96, height: 97)
                        .padding(.leading, -20)
                        .padding(.trailing, 20)
                        
                        Rectangle()
                            .fill(Color.gray01)
                            .frame(width: 1, height: 113.65)
    
                        
                        
                        
                        
                        VStack(spacing: 10){
                            
                            HStack(spacing: 14){
                                
                                dateButton(date: 1, isActive: false, currentDate: $currentDate)
                                dateButton(date: 2, isActive: false, currentDate: $currentDate)
                                dateButton(date: 3, isActive: false, currentDate: $currentDate)
                                dateButton(date: 4, isActive: false, currentDate: $currentDate)
                                dateButton(date: 5, isActive: false, currentDate: $currentDate)
                                dateButton(date: 6, isActive: true, currentDate: $currentDate)
                                dateButton(date: 7, isActive: false, currentDate: $currentDate)
                                dateButton(date: 8, isActive: false, currentDate: $currentDate)
                                dateButton(date: 9, isActive: false, currentDate: $currentDate)

                            }
                            .padding(.leading, -10)
                            
                            HStack(spacing: 14){
                                
                                dateButton(date: 10, isActive: false, currentDate: $currentDate)
                                dateButton(date: 11, isActive: false, currentDate: $currentDate)
                                dateButton(date: 12, isActive: false, currentDate: $currentDate)
                                dateButton(date: 13, isActive: false, currentDate: $currentDate)
                                dateButton(date: 14, isActive: true, currentDate: $currentDate)
                                
                                dateButton(date: 15, isActive: false, currentDate: $currentDate)
                                dateButton(date: 16, isActive: false, currentDate: $currentDate)
                                dateButton(date: 17, isActive: false, currentDate: $currentDate)
                                dateButton(date: 18, isActive: false, currentDate: $currentDate)

                                
                            }
                            
                            HStack(spacing: 14){
                                dateButton(date: 19, isActive: false, currentDate: $currentDate)
                                dateButton(date: 20, isActive: false, currentDate: $currentDate)
                                dateButton(date: 21, isActive: false, currentDate: $currentDate)
                                
                            }
                            .padding(.leading, -280)
                            
                        }
                        .frame(width: 552, height: 80)
                        .padding(.leading, 30)
                        
                        
                    }
                    
                    
                    
                    
                }
                .frame(width: 781, height: 115)
                .overlay {
                    
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color.gray04, lineWidth: 1)
                        .frame(width: 781, height: 115)
                    
                    
                }
                
                VStack{
                    HStack{
                        Text("MC1 day\(currentDate)")
                            .font(Font.custom("DungGeunMo", size: 32))
                            .foregroundColor(Color.blue02)
                            .padding(.leading, 43)
                            .padding(.top, 30.52)
                        Spacer()
                    }

                        Text("난 곤듀니까^^")
                                .font(Font.custom("DungGeunMo", size: 32))
                                .foregroundColor(.gray)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                   
                            
                    
                    Text("세상은 나를 피곤하게 한다. 나는 곤듀인데.. 왜 사람들은 몰라줄까?\n브루니? 어제 그 사람은 나를 피오나라고 불렀다.\n내 가만 두지 않을게야….\n비록 우리 엄마도 나를 곤듀라고 부르지 않지만..\n아니 나를 뭐라고 부르지도 않지만\n누가 뭐래도 나는 이 시대의 하나뿐인 곤듀다.")
                        .kerning(3)
                        .tracking(7)
                        .font(Font.custom("NotoSansKR-Regular", size: 24))
                        .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 10))
                        .multilineTextAlignment(.center)
                        .lineSpacing(25)
                    
                    Spacer()
                    
                    
                }
                    .frame(width: 781, height: 661)
                    .overlay {
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.gray04, lineWidth: 1)
                            .frame(width: 781, height: 661)
                        
                        
                    }
                
                
                
                
                
            }
            
            
            
            
            
        }
        
        
    }
}

//struct dateButton: View{
//
//    var date : Int
//    var isActive: Bool
//
//    @Binding var currentDate: Int
//
//    var body: some View {
//
//
//
//        Button {
//            print("day \(date) 클릭")
//            currentDate = date
//        } label: {
//
//            Text("day\(date)")
//                .font(Font.custom("DungGeunMo", size: 20))
//                .foregroundColor(isActive ? Color.black01 : Color.gray01 )
//                .frame(width: 50)
//
//        }
//
//
//    }
//
//}

struct DetailDiaryView_Jinnie2_Previews: PreviewProvider {
    static var previews: some View {
        DetailDiaryView_Jinnie2()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
