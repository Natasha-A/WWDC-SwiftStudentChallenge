
import PlaygroundSupport
import SwiftUI

/*********** PAGE FOUR *************/
struct PageFourViewController: View {
    @State private var showSectionTwo = false
    @State private var nextPage = false
    @State private var showPopover: Bool = false
    @State private var circuitOne: Bool = false
    @State private var circuitTwo: Bool = false
    @State private var ohms: Double = 0
    @State private var displayAnimation: Bool = false
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        ZStack {
            //Background color of screen
            Color.white.edgesIgnoringSafeArea(.
                all)
            
            VStack{
                Text("3. Capacitators")
                    .foregroundColor(.black)
                    .font(.system(size: 70, weight: .bold, design: .default))
                
                Image(uiImage:#imageLiteral(resourceName: "CapacitatorIcon.png"))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 280)
                
                Text("Next, this is a capacitor! A capacitor is a component that stores electricity and then discharges it back into the circuit when there is a drop in voltage.  While a capacitor is like a battery in many ways, it is not the same thing either. A battery releases electrical energy very slowly, while a capacitor usually expends energy much more quickly. This is useful for example if you are taking a flash photograph and need a burst of light in a fraction of a second.")
                    .lineLimit(6)
                    .truncationMode(.middle)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.leading, 40)
                    .padding(.trailing, 40)
                .padding(.bottom, 20)
                    .font(.system(size: 20, design: .default))
                HStack {
                    VStack {
                        Image(uiImage:#imageLiteral(resourceName: "CircuitTwo.png")).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                        Button("") {
                        }.padding(10)
                            .offset(y: -204) //ANIMATION
                            .background(Color.yellow)
                            .frame(width: 28.0, height: 28.0)
                            .opacity(0.3)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.yellow)
                                    .scaleEffect(animationAmount)
                                    .opacity(Double(2 - animationAmount))
                                    .animation(Animation.easeInOut(duration:3)
                                        .repeatForever(autoreverses: false)
                                )
                        ).onAppear {
                            self.animationAmount = 2
                        }.scaleEffect(animationAmount)
                            .offset(y: -238)
                        .offset(x: -20)
                        Text("Press Here")
                            .foregroundColor(.white)
                            .padding(.top, 20)
                            .padding(.bottom, 20)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    VStack {
                        Text("Press the buttons to see how capciators change the flashing patterns of the LEDs.").foregroundColor(.black).padding(10)               .multilineTextAlignment(.center)
                        NavigationLink(destination: PageFourViewController()) {
                            Text("Continue")
                                .foregroundColor(.white)
                                .padding(.top, 20)
                                .padding(.bottom, 20)
                                .padding(.leading, 30)
                                .padding(.trailing, 30)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                    }.padding(10)
                    
                    VStack {
                        Image(uiImage:#imageLiteral(resourceName: "CircuitOne.png")).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                        Button("") {
                        }.padding(10)
                            .offset(y: -204) //ANIMATION
                            .background(Color.yellow)
                            .frame(width: 28.0, height: 28.0)
                            .opacity(0.3)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.yellow)
                                    .scaleEffect(animationAmount)
                                    .opacity(Double(2 - animationAmount))
                                    .animation(Animation.easeInOut(duration:1)
                                        .repeatForever(autoreverses: false)
                                )
                        ).onAppear {
                            self.animationAmount = 2
                        }.scaleEffect(animationAmount)
                            .offset(y: -238)
                            .offset(x:-6)
                        Text("Press Here")
                            .foregroundColor(.white)
                            .padding(.top, 20)
                            .padding(.bottom, 20)
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }.padding(10)
                
            }.padding(20)//VStack Closing
        }
    }
}

PlaygroundPage.current.setLiveView(PageFourViewController())

