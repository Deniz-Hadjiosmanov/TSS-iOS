

import SwiftUI

struct Timer: View {
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
                    
                        
                    
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 340, height: 85)
                        .cornerRadius(30)
                        .padding(.top, 110.0)
                        .padding(.bottom, 100.0)
                        
                    Image("confetti")
                        .padding(.bottom, -300.0)
                    
                    
                }
                .padding(.bottom, 580.0)
                
            }
        }
    }
    
    
    
    struct Timer_Previews: PreviewProvider {
        static var previews: some View {
            Timer()
        }
    }
}
