import SwiftUI

struct CoffeeBreak: View {
    
    @State private var isButtonPressed = false
    @State private var isPopupVisible = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                
                VStack {
                    Image("profile")
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
                
                    ZStack(alignment: .top) { // Aligns the images at the top
                        Image("breaks")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .padding(.bottom, 190.0)
                            .frame(maxWidth: 300, maxHeight: .infinity)
                        
                        if isButtonPressed {
                            Image("gif")
                                .padding(.leading, 160.0)
                                .padding(.top, 45.0)
                        }
                    }
                    
                    Spacer()
                    
                }
                
                Button(action: {
                                self.isButtonPressed = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                    self.isPopupVisible = true
                                }
                            }) {
                                Text("Start")
                                    .font(.system(size: 20, weight: .semibold))
                                    .foregroundColor(.white)
                                    .padding(.all, 10)
                                    .padding(.horizontal, 50.0)
                                    .background(Color.black)
                                    .cornerRadius(10)
                                    .padding(.top, 600.0)
                            }
                            
                            if isPopupVisible {
                                // Dimming overlay
                                Color.black.opacity(0.4)
                                    .edgesIgnoringSafeArea(.all)
                                
                                // Background blur effect
                                VisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial))
                                    .edgesIgnoringSafeArea(.all)
                                
                                // Popup content
                                VStack {
                                    Text("Your coffee partner is:\nElena")
                                        .font(.system(size: 25, weight: .bold))
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                        .padding(.top, 50.0)
                                    
                                    Image("cup")
                                        .frame(width: 100.0, height: 100.0)
                                    
                                    Spacer()
                                    
                                    Text("Suggested topic:")
                                        .font(.system(size: 25, weight: .bold))
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                    
                                    Text("Would you rather?")
                                        .font(.title) // increased font size of "more"
                                        .foregroundColor(.clear)
                                        .background(
                                            LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green]), startPoint: .leading, endPoint: .trailing)
                                                .mask(Text("Would you rather?").font(.title))
                                        )
                                    
                                    Spacer()
                                    
                                    Button(action: {
                                        self.isPopupVisible = false
                                    }) {
                                        Text("OK")
                                            .font(.system(size: 20, weight: .semibold))
                                            .foregroundColor(.white)
                                            .padding(.all, 10)
                                            .padding(.horizontal, 50.0)
                                            .background(Color.black)
                                            .cornerRadius(10)
                                    }
                                    
                                    Spacer()
                                }
                                .padding()
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(radius: 10)
                                .frame(width: 300, height: 400)
                            }
                        }
                    }
                }

                struct VisualEffectView: UIViewRepresentable {
                    var effect: UIVisualEffect?
                    
                    func makeUIView(context: Context) -> UIVisualEffectView {
                        UIVisualEffectView()
                    }
                    
                    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
                        uiView.effect = effect
                    }
                }
            }




struct CoffeeBreak_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeBreak()
        
    }
}

