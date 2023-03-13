import SwiftUI

struct CofeeBreak: View {
    
    @State private var isButtonPressed = false
    
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
                    // handle button action here
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
            }
        }
    }
}

struct CofeeBreak_Previews: PreviewProvider {
    static var previews: some View {
        CofeeBreak()
    }
}
