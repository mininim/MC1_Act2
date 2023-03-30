//
//  SwiftUIView.swift
//
//
//  Created by Eric Lee on 2023/03/30.
//

import SwiftUI

struct DetailDiaryView_Jerry: View {
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
                    HStack{
                        Text("MC1 day\(currentDate)")
                            .font(Font.custom("DungGeunMo", size: 32))
                            .foregroundColor(Color.blue02)
                            .padding(.leading, 43)
                            .padding(.top, 30.52)
                        Spacer()
                    }
                    
                    
                    
                    
                    NavigationLink(destination: {
                        DetailView_Moro().navigationBarBackButtonHidden(true)
                            .onAppear {
                                SoundPlayer.shared.stop()
                                SoundPlayer.shared.playSound(named: "9_MoroSSul", withExtension: ".mp3")
                            }
                    }, label: {
                        Text("3테크 1디자인 1도메인 1일반인")
                            .font(Font.custom("DungGeunMo", size: 32))
                            .foregroundColor(.gray)
                            .padding(EdgeInsets(top: 20.48, leading: 0, bottom: 40, trailing: 0))
                    })
                     
                    Text("귀찮으니까 음슴체로 쓰겠음\n나는 디자인과 나왔는데 디자인 잘한다고 생각 안함\n그 얘길 그리드한테 해줬더니\n아니라고 디자인 잘한다고 해주기는 커녕\n그럼 일반인하시면 되겠네요 이럼\n어이없 ; ㅋ\n그러면서 동시에 나보고 하는말이\n저희 팀은 3테크, 1디자인, 1도메인, 1일반인 으로 구성됐네요 이럼\n일반인 시러 ㅠㅠ 나 그냥 디자인할래 OTL…")
                        .kerning(3)
                        .tracking(5)
                        .font(Font.custom("NotoSansKR-Regular", size: 24))
                        .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 10))
                        .multilineTextAlignment(.center)
                        .lineSpacing(10)
                    
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

struct DetailDiaryView_Jerry_Previews: PreviewProvider {
    static var previews: some View {
        DetailDiaryView_Jerry()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
