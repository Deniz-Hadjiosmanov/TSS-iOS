import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // White background
                Color.white
                
                // VStack containing text and a spacer
                VStack {
                    // Text with custom font, black color, and padding to position it below top black block
                    Text("Together")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.top, 50.0)
                    
                    // HStack containing "we achieve" text and gradient "more" text
                    HStack {
                        Text("we achieve ")
                            .font(.system(size: 30, weight: .bold))
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Text("more")
                            .font(.title) // increased font size of "more"
                            .foregroundColor(.clear)
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
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct BlankPage: View {
    var body: some View {
        ZStack {
            Color.white
            
            VStack {
                Spacer()
                Image("Group 36")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
