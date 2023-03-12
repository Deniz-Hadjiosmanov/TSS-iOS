import SwiftUI

struct GameOfTheDay: View {

    @State private var remainingTime = 10 // 24 hours in seconds
    @State private var isTimerRunning = false
    @State private var isWheelSpinning = false
    @State private var spinAngle: Double = 0
    @State private var timer: Timer? = nil
    
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
                    .rotationEffect(.degrees(spinAngle))
                    .animation(Animation.easeInOut(duration: 2.0).repeatCount(isWheelSpinning ? .max : 0, autoreverses: false))
                    .onAppear {
                        spinAngle = 0.0 // set initial value of spinAngle to 0
                    }
                
                Button(action: {
                    if !isWheelSpinning {
                        withAnimation {
                            isWheelSpinning = true
                        }
                        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
                            withAnimation {
                                isWheelSpinning = false
                                timer = nil
                                let stopAngle = Double.random(in: 0...360)
                                let cycles = Int.random(in: 4...10)
                                let totalSpinAngle = 360 * Double(cycles) - stopAngle // subtract stopAngle instead of adding it
                                spinAngle = totalSpinAngle >= 0 ? totalSpinAngle : 360 * Double(cycles) + stopAngle // ensure spinAngle is always positive
                            }
                        }
                    }
                }) {
                    Text(isWheelSpinning ? "Spinning..." : "Spin the wheel")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.all, 14)
                        .padding(.horizontal, 10.0)
                        .background(isWheelSpinning ? Color.gray : Color.black)
                        .cornerRadius(10)
                        .padding(.top, 560.0)
                }

                // Little black line
                Rectangle()
                    .frame(width: 50, height: 9)
                    .foregroundColor(.black)
                    .padding(.leading, 350)
                    .padding(.trailing, 20)
            }
        }
    }
}

struct GameOfTheDay_Previews: PreviewProvider {
    static var previews: some View {
        GameOfTheDay()
    }
}
