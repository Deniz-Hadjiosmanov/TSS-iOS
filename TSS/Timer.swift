import SwiftUI

struct TimerView: View {
    
    @State private var remainingTime = 400 // 24 hours in seconds
    
    var body: some View {
        NavigationView {
            ZStack {
                // White background
                Color.white
                
                // VStack containing text and a spacer
                VStack {
                    // Text with custom font, black color, and padding to position it below top black block
                    Text("Time until")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.top, 470.0)
                    
                    // HStack containing "we achieve" text and gradient "more" text
                    HStack {
                        Text("the ")
                            .font(.system(size: 30, weight: .bold))
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Text("happy hour")
                            .font(.title) // increased font size of "more"
                            .foregroundColor(.clear)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green]), startPoint: .leading, endPoint: .trailing)
                                    .mask(Text("happy hour").font(.title))
                            )
                    }
                    
                    Text("The next happy hour begins in:")
                        .font(.system(size: 23, weight: .medium))
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.top, 105.0)
                        .padding(.bottom, -50)
                    
                    
                    // Countdown timer
                    Text(String(format: "%02d:%02d:%02d", remainingTime / 3600, (remainingTime % 3600) / 60, remainingTime % 60))
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.all, 10.0)
                        .background(Color.black)
                        .cornerRadius(10.0)
                        .padding(.top, 110.0)
                        .padding(.bottom, 100.0)
                        .onAppear {
                            startTimer()
                        }
                    
                    Image("confetti")
                        .padding(.bottom, -300.0)
                    
                    
                }
                .padding(.bottom, 580.0)
                
            }
        }
    }
    
    private func startTimer() {
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            if remainingTime > 0 {
                remainingTime -= 1
            }
        }
        timer.tolerance = 0.1
    }
    
}

struct Timer_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
