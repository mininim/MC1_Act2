import SwiftUI

struct ContentView: View {
        
        var body: some View {
        
            ZStack(){
                
                Image("mainbackground")
                    .resizable()
                    .ignoresSafeArea()


                MainView()
                
            }
    
        
    }
}


struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView().previewInterfaceOrientation(.landscapeRight)
    }
}
