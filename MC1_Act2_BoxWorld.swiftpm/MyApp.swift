import SwiftUI
import AVKit

@main
struct MyApp: App {
    
    private var player: AVAudioPlayer?
    
    init() {
        Font.registerFonts()
        
        //        //실제 폰트 이름 확인
        //        //폰트 파일명과 실제 이름이 다를 수 있음
//                for family in UIFont.familyNames{
//                    print(family)
//
//
//                    for names in UIFont.fontNames(forFamilyName: family){
//                        print("== \(names)")
//                    }
//                }
        if let url = Bundle.main.url(forResource: "videoplayback", withExtension: ".mp3") {
            do  {
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
                player?.volume = 0.1
                
            } catch {
                print(error)
            }
        }
        
    }
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}

