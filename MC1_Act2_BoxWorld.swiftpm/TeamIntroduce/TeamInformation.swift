import SwiftUI

struct TeamInformation: View {
    var body: some View {
        
        
        VStack{
            
            GeometryReader { geometry in
                Color.black.edgesIgnoringSafeArea(.all)
                
                ScrollView {
                        
                        
                        HStack {
                            Image("teamBox")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width, height:  geometry.size.height / 3*2)
                        }
                       
                    Group{
                        Text("Team 빡스")
                            .font(.mo(.regular, size: 40))
                            .foregroundColor(Color.white)
                            .offset(x: -50)
                        
                        name(name: "(오른쪽부터)")
                            .offset(x: 30)
                        
                        Spacer().frame(height: 40)
                        
                        name(name: "탈주닌자    Eric")
                        name(name: "파워F       Moana")
                        name(name: "갓반인      Jerry")
                        name(name: "일진누나    Jinnie")
                        name(name: "팩트입니다  Greed")
                        name(name: "저승사자    Moro")
                    }
                   
                    Spacer().frame(height: 100)
                    
                    Text("서툴고 어려웠어도 그 누구보다 열정적이었던\n           우리의 3월을 추억하며!\n\n")
                        .font(.mo(.regular, size: 40))
                        .foregroundColor(Color.white)
                    
                    
                    Text("우리들의 결과물!")
                        .font(.mo(.regular, size: 30))
                        .foregroundColor(Color.white)
                    
                    
                    Text("회고 성향 테스트")
                        .font(.mo(.regular, size: 30))
                        .foregroundColor(Color.white)
                    Image("smorelogo")
                    
                    Text("회고 방법 총집합")
                        .font(.mo(.regular, size: 30))
                        .foregroundColor(Color.white)
                        .padding(.top, 50)
                    Text("https://fog-raven-32f.notion.site/72bc94c65b994cb1ad6a9498d5e405ee")
                    
                        .font(.mo(.regular, size: 30))
                        .foregroundColor(Color.white)
                    
                    
                    
                         
                    }//scrollView
                
        
            }//Geometry
        }
        
    }
}

struct name: View {
    
    var name: String
    
    var body: some View {
        
        Text("\(name)")
            .font(.mo(.regular, size: 24))
            .foregroundColor(Color.white)
            .frame(width: 300,alignment: .leading)
        
        Spacer().frame(height: 20)
    }
}

struct TeamInformation_Previews: PreviewProvider {
    static var previews: some View {
        TeamInformation()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
