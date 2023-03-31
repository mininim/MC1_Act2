import SwiftUI

struct HomeView: View {
    
    @State var isLoading: Bool = true
    @State var currentMember: MemberData = DataModal().team
    
    init(isLoading: Bool = true, currentMember: MemberData = DataModal().team) {
        self.isLoading = isLoading
        self.currentMember = currentMember
        
        SoundPlayer.shared.playSound(named: "1_loading", withExtension: ".mp3")
        
        SoundPlayer.backgroundPlayer.playSound(named: "boxworldbgm", withExtension: ".mp3")
        
    }
    
    var launchScreenView: some View {
        
        ZStack(alignment: .center) {
            
            LinearGradient(gradient: Gradient(colors: [Color("PrimaryColor"), Color("SubPrimaryColor")]),
                            startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            Image("launchscreen")
            
        }
        
    }

    
    
    var body: some View {
        
        ZStack {
            // Launch Screen
            if isLoading {
                launchScreenView
                    .transition(.opacity.animation(.easeInOut(duration: 1))).zIndex(1)
                    .animation(.easeInOut(duration: 2), value: isLoading)
                
            }
            
            NavigationView{
                ZStack{
                    
                    
                    BackLine()
                    
                    VStack(alignment: .leading) {
                        
                        TopLayer(currentMember: self.$currentMember)
                        
                        VStack(alignment: .leading, spacing: 0){
                            Title(currentMember: self.$currentMember)
                                .frame(width: 1225.81, height: 50)
                            
                            MiniRoom()
                                .frame(width: 1229, height: 567)
                        }
                    }
                    
                    Button {
                        print("greed")
                        currentMember = DataModal().greed
                        SoundPlayer.shared.stop()
                        SoundPlayer.shared.playSound(named: "7_GreedHi", withExtension: ".mp3")
                    } label: {
                        Image("greed")
                            .resizable()
                            .frame(width: 105, height: 180)
                    }
                    .offset(x: 150, y: 170)
                    
                    
                    Button {
                        print("jerry")
                        
                        
                        currentMember = DataModal().jerry
                        SoundPlayer.shared.stop()
                        SoundPlayer.shared.playSound(named: "2_JerryHi", withExtension: ".mp3")
                    } label: {
                        Image("jerry")
                            .resizable()
                            .frame(width: 105, height: 180)
                    }
                        .offset(y:40)
                    
                    Button {
                        print("jinnie")
                        currentMember = DataModal().jinnie
                        SoundPlayer.shared.stop()
                        SoundPlayer.shared.playSound(named: "6_JinnieHi", withExtension: ".mp3")
                    } label: {
                        Image("jinnie")
                            .resizable()
                            .frame(width: 105, height: 180)
                    }
                    .offset(x: 350, y: 130)
                    
                    Button {
                        print("eric")
                        currentMember = DataModal().eric
                        SoundPlayer.shared.stop()
                        SoundPlayer.shared.playSound(named: "5_EricHi", withExtension: ".mp3")
                        
                    } label: {
                        Image("eric")
                            .resizable()
                            .frame(width: 105, height: 180)
                    }
                    .offset(x: 500, y: 300)
                    
                    Button {
                        print("moro")
                        currentMember = DataModal().moro
                        SoundPlayer.shared.stop()
                        SoundPlayer.shared.playSound(named: "4_MoroHi", withExtension: ".mp3")
                    } label: {
                        Image("moro")
                            .resizable()
                            .frame(width: 105, height: 180)
                    }
                        .offset(x: -180, y: 140)
                    
                    Button {
                        print("moana")
                        currentMember = DataModal().moana
                        SoundPlayer.shared.stop()
                        SoundPlayer.shared.playSound(named: "3_MoanaHi", withExtension: ".mp3")
                    } label: {
                        Image("moana")
                            .resizable()
                            .frame(width: 105, height: 180)
                    }
                        .offset(x: -430, y: 240)
                    
                }//Zstack
            }
            .navigationViewStyle(StackNavigationViewStyle())
            
            
        }
        
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                withAnimation {  isLoading.toggle() }
            })
        }
        
    }
}


struct PutInMinimi: View {
    
    var imagename : String
    
    var body: some View {
        
        Button {
            print("refresh")
        } label: {
            Image(imagename)
                .resizable()
                .frame(width: 105, height: 180)
        }

        
        
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

