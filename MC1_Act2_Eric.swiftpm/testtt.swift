import SwiftUI

struct testtt: View {
    var body: some View {
        
    
        GeometryReader { geometry in
            NavigationView {
                
                VStack{
                    HStack(alignment: .top, spacing: 10){ // 오늘의 뉴스  - 아바타 -  자기소개
                        
                        
                        VStack{
                            Text("오늘의 뉴스")
                            List{
                                
                                NavigationLink {
                                    Moana()
                                } label: {
                                    Text("Moana")
                                }
                                
                                NavigationLink {
                                    Greed()
                                } label: {
                                    Text("Greed")
                                }
                                
                                NavigationLink {
                                    Jerry()
                                } label: {
                                    Text("Jerry")
                                }
                                
                                NavigationLink {
                                    Jinnie()
                                } label: {
                                    Text("Jinnie")
                                }
                                
                                NavigationLink {
                                    Eric()
                                } label: {
                                    Text("Eric")
                                }
                                
                                NavigationLink {
                                    Moro()
                                } label: {
                                    Text("Moro")
                                }
    
                            }
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        //NavigationView
                        Text("아바타")
                            .frame(width: (geometry.size.width) / 4 , height: geometry.size.height / 2 )
                            .border(.black)
                        
                        Text("자기소개")
                            .frame(width: (geometry.size.width) / 4  , height: geometry.size.height / 2 )
                            .border(.black)
                        
                    }//HStack 오늘의 뉴스  - 아바타 -  자기소개
                    .padding(5)
                    .border(.yellow)
                    
                    
                    HStack(){ // IFarm , 소개
                        
                        Button {
                            print("헬로")
                        } label: {
                            Text("IFarm")
                                .frame(width: geometry.size.width / 4 , height: geometry.size.height / 12)
                                .border(.black)
                        }
                        
                        
                        
                        
                        Text("빡빡빡스")
                            .frame(width: geometry.size.width / 4 * 3 , height: geometry.size.height / 12)
                            .border(.black)
                    } // HStack - IFarm , 소개
                    
                    .padding(5)
                    .border(.red)
                    
                    
                    Image("miniroom")
                        .resizable()
                    
                    
                }//Vstack
                .padding(3)
                .border(.black)
                
                
                
                
            }.navigationViewStyle(StackNavigationViewStyle())
                .frame(width: (geometry.size.width) , height: geometry.size.height )
            
            
            
            
        }
        
        
        
        
    }
}


struct testtt_Previews: PreviewProvider{
    static var previews: some View{
        testtt().previewInterfaceOrientation(.landscapeRight)
    }
}
