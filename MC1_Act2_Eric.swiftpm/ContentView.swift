import SwiftUI

struct ContentView: View {
        
        var body: some View {
        
        Group{
            GeometryReader { geometry in
                NavigationView {
                    
                    VStack(spacing: 0){
                        HStack(alignment: .top, spacing: 0){
                            // 오늘의 뉴스  - 아바타 -  자기소개
                            
                            UpdatedNewsView()
                            .frame(width: 608)
                            
                            
                            
                            
                            
                            IntroductionView()
                                .frame(width: 618)
                            
                            
                               
                            
                            
                            
                        }//HStack 오늘의 뉴스  - 아바타 -  자기소개
                        .frame(height: 251)
                        
                        
                        HStack(){ // IFarm , 소개
                            
                            
                            Button {
                                print("IFarm")
                            } label: {
                                Text("IFarm")
                                    .font(Font.custom("DungGeunMo", size: 30))
                                    .foregroundColor(Color.mainOrange)
                                    .padding(.leading, 24.5)
                                    .padding(.trailing, 35.5)
                                    .padding(.top, 11)
                                    .padding(.bottom, 8)
                                    .frame(width: 135 , height: 53)
                                    
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 5)
                                                        .stroke(Color.gray01, lineWidth: 1)
                                                        .offset(x: 1.5, y: 3)
                                    }
                                    
                                    

                            }
                            
                            Spacer()
                            
                            
                            Text("우리팀의 정보를 어쩌구 저쩌구 홈피이름으로 표현")
                                .font(Font.custom("NotoSansKR-Regular", size: 24))
                                .foregroundColor(Color.gray01)
                                

                        } // HStack - IFarm , 소개
                        .frame(height: 50)
                        
                        
                        Image("miniroom")
                            .resizable()
                            .scaledToFill()
                            .overlay {
                                RoundedRectangle(cornerRadius: 5)
                                                .stroke(Color.gray01, lineWidth: 1)
                            }
                                
                        
                        
                    }//Vstack

                    
                    
                    
                    
                    
                }//Navigation view
                .navigationViewStyle(StackNavigationViewStyle())
                    .frame(width: (geometry.size.width) , height: geometry.size.height)
                    
                
            }
            
        }
        .padding(50)
        
        
    
        
                
        
    }
}


struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView().previewInterfaceOrientation(.landscapeRight)
    }
}
