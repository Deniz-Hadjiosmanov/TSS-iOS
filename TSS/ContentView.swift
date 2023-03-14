import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
              
                Color.white
                
                // VStack containing text and a spacer
                VStack {
                    // Text with custom font, black color, and padding to position it below top black block
                    Text("Together")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.top, 60.0)
                    
                 
                    HStack {
                        Text("we achieve ")
                            .font(.system(size: 30, weight: .bold))
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Text("more")
                            .font(.title)                             .foregroundColor(.clear)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green]), startPoint: .leading, endPoint: .trailing)
                                    .mask(Text("more").font(.title))
                            )
                    }
                    
                    // Spacer to push the text to the top and keep it there
                    Spacer()
                    
                    
                    
                    // Next button with black background and white text
                    NavigationLink(destination: BlankPage()) {
                        Text("Next")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.all, 10)
                            .padding(.horizontal, 50.0)
                            .background(Color.black)
                            .cornerRadius(10)
                            .padding(.bottom, 20.0)
                    }
                }
                
                Image("home_image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .background(Color.white)
                    .padding(.top, 50.0)
            }
            
        }
    }
}

struct BlankPage: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color.white
                Image("profile")
                    .padding(.bottom, 640.0)
                    .padding(.leading, 250.0)
                
                VStack {
                    Spacer()
                    
                    Text("Hello,")
                        .padding(.trailing, 263.0)
                        .padding(.top, 1)
                        .font(.system(size: 20, weight: .bold))
                    
                    Text("Robin Brown")
                        .padding(.trailing, 200.0)
                        .padding(.bottom, 90)
                        .font(.system(size: 20, weight: .bold))
                    
                    // Image placeholders
                   
                    
                    HStack {
                        
                        NavigationLink(destination: TimerView()){
                            Image("Timer")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing, -60.0)
                                .frame(width: 150, height: 150)
                        }
                        NavigationLink(destination: CoffeeBreak()){
                            Image("chat")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150)
                        }
                        NavigationLink(destination: GameOfTheDay()){
                            Image("game")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.leading, -60.0)
                                .frame(width: 150, height: 150)
                        }
                    }
                    .padding(.bottom, 20)
                    
                    
                    
                    Image("Group 36")
                        .padding(.top, 70.0)
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 400, height: 310)
                        .cornerRadius(50)
                        .padding(.bottom, -42.0)
                        .overlay(
                            Text("Quote of the day:")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .font(.system(size: 27, weight: .bold))
                                .padding(.trailing, 120.0)
                                .padding(.top, -90)
                        )
                    
                    Text("Coming together is a beginning, staying together is progress, and working together is success.")
                        .padding(-170.0)
                        .foregroundColor(.white)
                        .frame(width: 5)
                        .fontWeight(.medium)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
