
import PlaygroundSupport
import SwiftUI
/*********** PAGE ONE *************/
struct PageOneViewController: View {
    @State private var showSectionTwo = false
    @State private var nextPage = false
    @State private var showPopover: Bool = false
    
    var body: some View {
        ZStack {
            //Background color of screen
            Color.white.edgesIgnoringSafeArea(.all)
            VStack { //Vertical Section Stacks
                Text("1.Introducing, LEDs!")
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
                    .font(.system(size: 50, weight: .bold, design: .default))
                
                
                HStack { //Section One
                    Image(uiImage:#imageLiteral(resourceName: "LEDIcon.png")) //1st horizontal group
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400)
                    
                    VStack {
                        Text("First off, let’s take a look at LED! It is a short form for Light Emitting Diode. An LED is a diode that emits photons (light particles) when electricity flows through it, making it glow. They are very simple to use, yet have many applications including LED TVs, traffic lights and microwave displays.") //2nd horizontal group
                            .foregroundColor(.black)
                            .padding(20)
                            .font(.system(size: 20, design: .default))
                        
                        
                        Button(action: {
                            self.nextPage.toggle()
                        }) {
                            Text("How Do They Work?")
                                .foregroundColor(.white)
                                .padding(.top, 20)
                                .padding(.bottom, 20)
                                .padding(.leading, 30)
                                .padding(.trailing, 30)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                    }
                    
                }.padding(30)
                
                if nextPage {//...Once button is clicked, adds to view Section Two
                    
                    HStack { //Section Two
                        Text("Looking closer at an LED, you may notice that one leg is longer than the other. That is in order to indicate the polarity, so that the diode is placed in the right direction to allow electricity to flow. The way I like to remember their names and polarity is using the good ol' lettering school grading system. The highest grade (A+) is given to the longest leg -- the Anode(+)...") //1st horizonal group
                            .foregroundColor(.black)
                            .font(.system(size: 18, design: .default))
                        
                        
                        Image(uiImage:#imageLiteral(resourceName: "LEDdiagram.png")) //2nd horizonal group
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 320)
                        VStack { //3rd horizonal group
                            Text("....and the lowest grade (C-) is given to the shortest leg - the Cathode(-)! Let's take a look at how we can get one of these to shinCathode(-)! Let's take a look at how we can get one of these to shine.")
                                .foregroundColor(.black)
                                .padding(.bottom, 20)
                            
                            NavigationLink(destination: PageOneViewController()){
                                Text("Continue")
                                    .foregroundColor(.white)
                                    .padding(.top, 20)
                                    .padding(.bottom, 20)
                                    .padding(.leading, 30)
                                    .padding(.trailing, 30)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                            }
                        }
                    }.padding(30)
                    HStack{
                        Button("❔What is polarity?") {
                            self.showPopover = true
                        }.popover(
                            isPresented: self.$showPopover,
                            arrowEdge: .bottom
                        ) { Text("Polarity refers to whether a circuit component is symmetric or not. Non-polarized components can be placed any direction, while polarized need to be based on one direction to work as intended.").padding(10)
                        }
                        Spacer()
                    }.padding(20)
                }
            }.navigationViewStyle(StackNavigationViewStyle())
        }
    } //All within a ZStack
}

PlaygroundPage.current.setLiveView(PageOneViewController())
