//
//  SwiftUIView.swift
//
//
//  Created by Eric Lee on 2023/03/30.
//

import SwiftUI

struct DetailDiaryView_Eric: View {
    @State
    var currentDate: Int = 1
    
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
                                    dateButton(date: 5, isActive: true, currentDate: $currentDate)
                                    dateButton(date: 6, isActive: false, currentDate: $currentDate)
                                    dateButton(date: 7, isActive: false, currentDate: $currentDate)
                                    dateButton(date: 8, isActive: false, currentDate: $currentDate)
                                    dateButton(date: 9, isActive: false, currentDate: $currentDate)
                                    
                                }
                                .padding(.leading, -10)
                                
                                HStack(spacing: 14){
                                    
                                    dateButton(date: 10, isActive: true, currentDate: $currentDate)
                                    dateButton(date: 11, isActive: false, currentDate: $currentDate)
                                    dateButton(date: 12, isActive: false, currentDate: $currentDate)
                                    dateButton(date: 13, isActive: false, currentDate: $currentDate)
                                    dateButton(date: 14, isActive: true, currentDate: $currentDate)
                                    dateButton(date: 15, isActive: false, currentDate: $currentDate)
                                    dateButton(date: 16, isActive: false, currentDate: $currentDate)
                                    dateButton(date: 17, isActive: false, currentDate: $currentDate)
                                    dateButton(date: 18, isActive: true, currentDate: $currentDate)
                                    
                                    
                                }
                                
                                HStack(spacing: 14){
                                    dateButton(date: 19, isActive: true, currentDate: $currentDate)
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
                        Text("MC1 \(currentDate)")
                            .font(Font.custom("DungGeunMo", size: 32))
                            .foregroundColor(Color.blue02)
                            .padding(EdgeInsets(top: -30, leading: 0, bottom: 20, trailing: 0))
                        
                        
                        NavigationLink(destination: DetailView_Jinnie().navigationBarBackButtonHidden(true)
                            .onAppear {
                                SoundPlayer.shared.stop()
                                SoundPlayer.shared.playSound(named: "11_JinnieSSul", withExtension: ".mp3")
                            }){
                            Text("사람이 어떻게 그래요?")
                                .font(Font.custom("DungGeunMo", size: 32))
                                .foregroundColor(.gray)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                        }
                         
                            
                        
                        
                        Text("마일스톤 공유의 날, 팀11 빡스는 열심히 발표를 하였다.\n그러나, 에릭의 머리를 아프게 한 질문이 들어왔다.\n“사람이 성장하고 싶지 않을 수도 있지 않나요?”\n“모든 사람이 성장하고 싶어할까요?”\n\n두둥\n\n그 발언은 에릭 머릿속에 시속 160km로 날아와 각인되었다\n“사람이 성장하고 싶지 않을 수 있나,,,?”                  \n“과연 그런사람이 존재하나?”\n고민에 휩싸인 에릭\n자신이 모르는 세상이 있다는 것을 깨닫고 편두통을 호소하기 시작한다.\n처음 듣는 세상을 마주한 에릭,\n견디지 못하고 머리를 쥐어뜯으며 이해하려 하지만,\n“사람이 그럴 수 있어요?”\n를 수십번 반복한다.\n반복에 반복을 거듭하던 에릭, 결국 병원으로 떠나고,,,\nMC1 part1 챌린지에는 불참하게 된다.\n\n그리고 점점 팀원들은 그의 존재를 잊어가는데…..")
                            .kerning(3)
                            .tracking(5)
                            .font(.system(size: 20))
                            .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 10))
                        
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

struct DetailDiaryView_Eric_Previews: PreviewProvider {
    static var previews: some View {
        DetailDiaryView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
