import SwiftUI
import UIKit

struct GameOfTheDay: View {
    
    @State private var remainingTime = 10 // 24 hours in seconds
    @State private var isTimerRunning = false
    @State private var isWheelSpinning = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // White background
                Color.white
                
                // VStack containing text and a spacer
                Image("profile")
                    .padding(.bottom, 650.0)
                    .padding(.leading, 280.0)
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
                
                .padding(.bottom, 1030.0)
                
                Image("Wheel")
                    .rotationEffect(isWheelSpinning ? .degrees(360) : .zero)
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: (1 != 0)))
                
                Button(action: {
                    isWheelSpinning.toggle()
                }) {
                    Text("Spin the wheel")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.all, 14)
                        .padding(.horizontal, 10.0)
                        .background(Color.black)
                        .cornerRadius(10)
                        .padding(.top, 560.0)
                }
            }
        }
    }
}

struct GameOfTheDay_Previews: PreviewProvider {
    static var previews: some View {
        GameOfTheDay()
    }
}
