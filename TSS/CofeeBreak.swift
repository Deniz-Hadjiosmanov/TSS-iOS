import SwiftUI
import UIKit

struct CofeeBreak: View {
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                
                VStack {
                    Image("profile")
                        .padding(.bottom, 640.0)
                        .padding(.leading, 250.0)
                    
                    Text("Chat with your")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.black)
                      
                    
                    HStack {
                   
                        
                        Text("colleagues")
                            .font(.title)
                            .foregroundColor(.clear)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green]), startPoint: .leading, endPoint: .trailing)
                                    .mask(Text("colleagues").font(.title))
                                
                                
                                
                                
                            )
                    }
                    
                    Text("Press the start button")
                        .font(.system(size: 25, weight: .medium))
                        .foregroundColor(.black)
                        .padding(.top, 50)
                    
                    
                    Text("and make new friends.")
                        .font(.system(size: 25, weight: .medium))
                        .foregroundColor(.black)
                    
                    
                    Spacer()
                    
                        .padding(.top, 40.0)
                
                        Image("breaks")
                            .padding(.bottom, 860.0)
                    
                            
                    }
                NavigationLink(destination: BlankPage()) {
                    Text("Next")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .padding(.horizontal, 50.0)
                        .background(Color.black)
                        .cornerRadius(10)
                    .padding(.top, 600.0)
                    

                }
                
               

                
            }
        }
        .onAppear {
          
        }
    }
    
  
    
  
    
   
}

struct CofeeBreak_Previews: PreviewProvider {
    static var previews: some View {
    CofeeBreak()
    }
}
