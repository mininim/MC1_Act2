//
//  SwiftUIView.swift
//
//
//  Created by Eric Lee on 2023/03/30.
//

import SwiftUI

struct DetailDiaryView_Jinnie: View {
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
                                    NavigationLink(destination: DetailView_Jinnie2().navigationBarBackButtonHidden(true)
                                        .onAppear {
                                            SoundPlayer.shared.stop()
                                            SoundPlayer.shared.playSound(named: "12_HomeEnd", withExtension: ".mp3")
                                        }){
                                        //dateButton(date: 14, isActive: true, currentDate: $currentDate)
                                        Text("day14")
                                            .font(Font.custom("DungGeunMo", size: 19))
                                            .foregroundColor(Color.black01)
                                            .frame(width: 50)
                                    }
                                    
                                    
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
                        
                        
                        NavigationLink(destination: DetailView_Jerry()){ //일단 제리해둠
                            HStack {
                                Text("술병난 지니!")
                                    .font(Font.custom("DungGeunMo", size: 32))
                                    .foregroundColor(.gray)
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                                Spacer()
                                Image("jinnieImg")
                                    .resizable()
                                    .frame(width:250, height: 200)
                            }.padding(EdgeInsets(top: 0, leading: 130, bottom: 0, trailing: 130))
                        }
                        
                        
                        
                        
                        Text("일요일! 지니는 오랜만에 친구들과 만나 12시간(pm 5 to am 5)동안의 회포를 풀었습니다.\n그리고 세션참여 중 힘들어하던 지니에게 브루니가 다가와서 말했습니다.\n브루니: 커닝시티 뒷골목에 있을 거 같아요 \n지니에게 구원자인 도라가 비타민과 물을주며 다가왔습니다. \n도라 : 숙취에는 비타민과 수분섭취가 최고에요 \n지니는 그 뒤 좀 나아져 열심히 회의를 했습니다! \n[추가속보] 지니, 그 날 저녁 또 술 먹음 \n[어록] 맥주는 음료수지~")
                            .kerning(3)
                            .tracking(7)
                            .font(.system(size: 25))
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

struct DetailDiaryView_Jinnie_Previews: PreviewProvider {
    static var previews: some View {
        DetailDiaryView_Jinnie()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
