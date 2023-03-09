import SwiftUI
import UIKit

struct GameOfTheDay: View {
    
    @State private var remainingTime = 10 // 24 hours in seconds
    @State private var isTimerRunning = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // White background
                Color.white
                
                // VStack containing text and a spacer
                Image("profile")
                    .padding(.bottom, 640.0)
                    .padding(.leading, 220.0)
                VStack {
                    // Text with custom font, black color, and padding to position it below top black block
                    Text("Play the")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.top, 470.0)
                    
                    // HStack containing "we achieve" text and gradient "more" text
                    HStack {
                        Text(" ")
                            .font(.system(size: 30, weight: .bold))
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Text("game of the day")
                            .font(.title) // increased font size of "more"
                            .foregroundColor(.clear)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green]), startPoint: .leading, endPoint: .trailing)
                                    .mask(Text("game of the day").font(.title))
                            )
                    }
                    
                   
                    
                   
                }
                .padding(.bottom, 580.0)
                
            }
        }
    }
    
    
}

struct GameOfTheDay_Previews: PreviewProvider {
    static var previews: some View {
        GameOfTheDay()
    }
}
