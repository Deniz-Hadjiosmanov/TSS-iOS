import SwiftUI
import UIKit

struct TimerView: View {
    
    @State private var remainingTime = getRemainingTime()
    @State private var isTimerRunning = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                
                VStack {
                    Image("profile")
                        .padding(.bottom, 640.0)
                        .padding(.leading, 250.0)
                    
                    Text("Time until")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.top, 0.0)
                    
                    HStack {
                        Text("the ")
                            .font(.system(size: 30, weight: .bold))
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Text("happy hour")
                            .font(.title)
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
                    
                    Text(String(format: "%02d:%02d:%02d", remainingTime / 3600, (remainingTime % 3600) / 60, remainingTime % 60))
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.all, 10.0)
                        .background(Color.black)
                        .cornerRadius(10.0)
                        .padding(.top, 110.0)
                        .padding(.bottom, 100.0)
                    
                    Image("confetti")
                        .padding(.bottom, 30.0)
                }
                .padding(.bottom, 580.0)
                
            }
        }
        .onAppear {
            startTimer()
        }
    }
    
    private func startTimer() {
        isTimerRunning = true
        var timer: Timer!
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            remainingTime -= 1
            
            if remainingTime == 0 {
                timer.invalidate()
                startVibration()
            }
        }
        timer.tolerance = 0.1
    }
    
    private func startVibration() {
        let generator = UINotificationFeedbackGenerator()
        generator.prepare()
        generator.notificationOccurred(.success)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            if isTimerRunning {
                startVibration()
            }
        }
    }
    
    private static func getRemainingTime() -> Int {
        let calendar = Calendar.current
        let now = Date()
        var components = DateComponents()
        components.hour = 14
        components.minute = 0
        components.second = 0
        
        guard let targetDate = calendar.nextDate(after: now, matching: components, matchingPolicy: .strict) else {
            return 0
        }
        
        let remainingTime = Int(targetDate.timeIntervalSinceNow)
        
        return remainingTime > 0 ? remainingTime : 24 * 60 * 60 + remainingTime
    }
}

struct Timer_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
