//
//  Board.swift
//  BoxWorld
//
//  Created by Greed on 2023/03/29.
//

import SwiftUI

struct Board: View {
    
    @Binding var currentMember : MemberData
       
    var body: some View {
        //NavigationView {
        VStack(alignment: .leading) {
            Text("Updated news")
                .font(.mo(.regular, size: 24))
                .foregroundColor(Color.orange)
                .frame(width: 160, height: 24, alignment: .leading)
            
            
            
            Divider()
                
                VStack {
                    
                    ForEach(currentMember.articles, id: \.self.id) { art in
                        
                        NavigationLink {
                            
                            if currentMember.member.name == "BOX" {
                                DetailView_Jerry().navigationBarBackButtonHidden(true)
                                    .onAppear {
                                        SoundPlayer.shared.stop()
                                        SoundPlayer.shared.playSound(named: "8_JerrySSul", withExtension: ".mp3")
                                    }
                                
                                                                
                            }else{
                                DetailView()
                            }
                            
                               } label: {
                                   PostFormat(postName: art.name)
                           }
                        
                    }
                    
                    Spacer()
                }.frame(height: 199)
            
            
        
            
            
        }//Vstack
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))

        //}
        .navigationViewStyle(StackNavigationViewStyle())
        
        
    }
}

struct Posts: View {
    
    @Binding var currentMember : MemberData
    
    var body: some View {

        
        NavigationLink {
            DetailView()
                .navigationBarBackButtonHidden(true)
               } label: {
                   PostFormat(postName: currentMember.articles[0].name)
           }
        NavigationLink {
            DetailView()
                .navigationBarBackButtonHidden(true)
               } label: {
                   PostFormat(postName: currentMember.articles[1].name)
           }
        NavigationLink {
            DetailView()
                .navigationBarBackButtonHidden(true)
               } label: {
                   PostFormat(postName: currentMember.articles[2].name)
           }
        NavigationLink {
            DetailView()
                .navigationBarBackButtonHidden(true)
               } label: {
                   PostFormat(postName: currentMember.articles[3].name)
           }
        NavigationLink {
            DetailView()
                .navigationBarBackButtonHidden(true)
               } label: {
                   PostFormat(postName: currentMember.articles[3].name)
           }
        NavigationLink {
            DetailView()
                .navigationBarBackButtonHidden(true)
               } label: {
                   PostFormat(postName: currentMember.articles[3].name)
           }
        
        
    }
}


struct PostFormat: View {
    
    var postName: String
    
    var body: some View {
        
        HStack(spacing:0){
            Label {
                Text(postName)
                    .font(.noto(.regular))
                    .foregroundColor(Color(hex: 0x49619F))
                    .lineLimit(1)
            } icon: {
                RoundedRectangle(cornerRadius: 0)
                    .fill(.gray)
                    .frame(width: 5, height: 5)
            }
            .frame(width: 525, height: 29, alignment: .leading)
            Spacer()
        }
        
    }
}


//
//struct Board_Previews: PreviewProvider {
//    static var previews: some View {
//        Board(currentarticles.articles)
//            .previewInterfaceOrientation(.landscapeLeft)
//    }
//}

//
//
//struct TeamPost: View {
//
//    var body: some View {
//
//
//
//        NavigationLink {
//            DetailView()
//                .navigationBarBackButtonHidden(true)
//               } label: {
//                   PostFormat(postName: DataModal().team.articles[0].name)
//           }
//        NavigationLink {
//            DetailView()
//                .navigationBarBackButtonHidden(true)
//               } label: {
//                   PostFormat(postName: DataModal().team.articles[1].name)
//           }
//        NavigationLink {
//            DetailView()
//                .navigationBarBackButtonHidden(true)
//               } label: {
//                   PostFormat(postName: DataModal().team.articles[2].name)
//           }
//        NavigationLink {
//            DetailView()
//                .navigationBarBackButtonHidden(true)
//               } label: {
//                   PostFormat(postName: DataModal().team.articles[3].name)
//           }
//        NavigationLink {
//            DetailView()
//                .navigationBarBackButtonHidden(true)
//               } label: {
//                   PostFormat(postName: DataModal().team.articles[4].name)
//           }
//        NavigationLink {
//            DetailView()
//                .navigationBarBackButtonHidden(true)
//               } label: {
//                   PostFormat(postName: DataModal().team.articles[5].name)
//           }
//
//
//    }
//}
//
//
//struct EricPost: View {
//
//    var body: some View {
//
//
//        NavigationLink {
//            DetailView()
//                .navigationBarBackButtonHidden(true)
//               } label: {
//                   PostFormat(postName: DataModal().eric.articles[0].name)
//           }
//        NavigationLink {
//            DetailView()
//                .navigationBarBackButtonHidden(true)
//               } label: {
//                   PostFormat(postName: DataModal().eric.articles[1].name)
//           }
//        NavigationLink {
//            DetailView()
//                .navigationBarBackButtonHidden(true)
//               } label: {
//                   PostFormat(postName: DataModal().eric.articles[2].name)
//           }
//        NavigationLink {
//            DetailView()
//                .navigationBarBackButtonHidden(true)
//               } label: {
//                   PostFormat(postName: DataModal().eric.articles[3].name)
//           }
//
//    }
//}
//
//
//struct JerryPost: View {
//
//    var body: some View {
//
//
//        NavigationLink {
//            DetailView()
//                .navigationBarBackButtonHidden(true)
//               } label: {
//                   PostFormat(postName: DataModal().eric.articles[0].name)
//           }
//        NavigationLink {
//            DetailView()
//                .navigationBarBackButtonHidden(true)
//               } label: {
//                   PostFormat(postName: DataModal().eric.articles[1].name)
//           }
//        NavigationLink {
//            DetailView()
//                .navigationBarBackButtonHidden(true)
//               } label: {
//                   PostFormat(postName: DataModal().eric.articles[2].name)
//           }
//        NavigationLink {
//            DetailView()
//                .navigationBarBackButtonHidden(true)
//               } label: {
//                   PostFormat(postName: DataModal().eric.articles[3].name)
//           }
//
//    }
//}
