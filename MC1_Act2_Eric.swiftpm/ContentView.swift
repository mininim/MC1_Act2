import SwiftUI

struct ContentView: View {
        
        var body: some View {
        
            ZStack(){
                
                DetailView()
                
//                Image("mainbackground")
//                    .resizable()
//                    .ignoresSafeArea()
//
//
//                WhiteCanvasView()
//                    .ignoresSafeArea(.all)
//                    .padding([.leading, .trailing], 23)
//                    .padding(.top, 69.52)
//                    .padding(.bottom, 16.48)
//
//                MainView()
//                    .ignoresSafeArea(.all)
//                    .frame(width: 1228.5, height: 882.71)
                    
                
            }
    
        
    }
}


struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView().previewInterfaceOrientation(.landscapeRight)
    }
}
