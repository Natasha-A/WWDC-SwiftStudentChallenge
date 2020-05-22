import UIKit

import PlaygroundSupport
import SwiftUI
/*********** PAGE THREE *************/
struct PageThreeViewController: View {
    @State private var showSectionTwo = false
    @State private var nextPage = false
    @State private var showPopover: Bool = false
    @State private var ohms: Double = 0
    @State private var displayAnimation: Bool = false
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        ZStack {
            //Background color of screen
            Color.white.edgesIgnoringSafeArea(.
                all)
            
            VStack{
                Text("2. Resistors")
                    .foregroundColor(.black)
                    .font(.system(size: 70, weight: .bold, design: .default))
                
                Image(uiImage:#imageLiteral(resourceName: "ResistorIcon.png"))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    //1st horizontal group
                
                Text("Resistors are great little fellas since they limit the flow of electrons in the circuit and protect the LED from trying to draw too much current. You can use basic math to determine the best resistor value to use, or you can observe your LED circuit’s response since amount of resistance (measured in ohms) affects the brightness of the LED.")
                    .lineLimit(4)
                    .truncationMode(.middle)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.leading, 40)
                    .padding(.trailing, 40)
                .padding(.bottom, 20)
                    .font(.system(size: 18, design: .default))
                HStack {
                    ZStack {
                        Image(uiImage:#imageLiteral(resourceName: "CircuitOne.png")).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400)
                    }
                    VStack {
                        Text("Move the slider to see how to value of the resistance impacts the brightness of the LED with change in “pressure” of the current.").foregroundColor(.black)
                        Slider(value: $ohms, in: 0...400, step: 1) //Slider
                        if (ohms <= 150){
                            Text("High Brightness: \(ohms) Ω")
                                .foregroundColor(.black)
                                .padding(.bottom, 20)
                            
                            Button("") {
                            }.padding(10)
                                .offset(x: -400)
                                .offset(y: -130) //ANIMATION
                                    .background(Color.yellow)
                                    .frame(width: 32.0, height: 32.0)
                                    .opacity(0.3)
                                    .foregroundColor(.white)
                                    .clipShape(Circle())
                                    .overlay(
                                        Circle()
                                            .stroke(Color.yellow)
                                            .scaleEffect(animationAmount)
                                            .opacity(Double(2 - animationAmount))
                                            .animation(Animation.easeInOut(duration:0.5)
                                                .repeatForever(autoreverses: false)
                                        )
                                ).onAppear {
                                    self.animationAmount = 2
                            }.scaleEffect(animationAmount)
                                .offset(x: -400)
                                .offset(y: -154)
                            
                            
                            //self.displayAnimation = true
                        } else if (ohms > 120 && ohms < 250){
                            Text("Medium Brightness: \(ohms) Ω").foregroundColor(.black).padding(.bottom, 20)
                            
                            Button("") {
                            }.padding(10)
                                .offset(x: -400)
                                .offset(y: -130) //ANIMATION
                                .background(Color.yellow)
                                .frame(width: 32.0, height: 32.0)
                                .opacity(0.2)
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
                                .offset(x: -400)
                                .offset(y: -154)
                            
                            
                        } else {
                            Text("Low Brightness: \(ohms) Ω").foregroundColor(.black).padding(.bottom, 20)
                            
                            Button("") {
                            }.padding(10)
                                .offset(x: -400)
                                .offset(y: -130) //ANIMATION
                                .background(Color.yellow)
                                .frame(width: 32.0, height: 32.0)
                                .opacity(0.1)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .stroke(Color.yellow)
                                        .scaleEffect(animationAmount)
                                        .opacity(Double(2 - animationAmount))
                                        .animation(Animation.easeInOut(duration:1.5)
                                            .repeatForever(autoreverses: false)
                                    )
                            ).onAppear {
                                self.animationAmount = 2
                            }.scaleEffect(animationAmount)
                                .offset(x: -400)
                                .offset(y: -154)
                            
                        }
                        
                        NavigationLink(destination: PageThreeViewController()) {
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
                }.padding(20)
            }.padding(20)
        }
    }
}
PlaygroundPage.current.setLiveView(PageThreeViewController())
