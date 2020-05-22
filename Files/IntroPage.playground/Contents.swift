
import SwiftUI
import PlaygroundSupport
struct StartScreenViewController: View {
    @State private var showDetails = false
    var body: some View {
        NavigationView {
            ZStack {
                //Background color of screen
                Color.white.edgesIgnoringSafeArea(.all)
                VStack {
                    Text("⚡Intro to Electronics⚡")
                        .foregroundColor(.black)
                        .font(.system(size: 70, weight: .bold, design: .default))
                    Image(uiImage:#imageLiteral(resourceName: "comps.png"))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 600)
                        .padding(50)
                    
                    Text("Hi there! I see that you want to learn about electronics, but don’t know where to start. Although electronics may seem intimidating at first, it can be fun and easy. In this short guide, you will learn about four of the basic electronic components shown above: LEDs, Resistors, Capacitors and Transistors. With the help of these little friends, you will get to see the *potential* packed in these small components, and hopefully it will *spark* your interest!")
                        .lineLimit(6)
                        .truncationMode(.middle)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.leading, 40)
                        .padding(.trailing, 40)
                        .font(.system(size: 20, design: .default))
                    NavigationLink(destination: StartScreenViewController()){
                        //Toggle button
                        Text("Let's begin!")
                            .foregroundColor(.white)
                            .padding(.top, 20)
                            .padding(.bottom, 20)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                    }.padding(40)
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

PlaygroundPage.current.setLiveView(StartScreenViewController())

